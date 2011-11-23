import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.event.*;
import java.io.File;
import com.sun.j3d.utils.universe.*;
import com.sun.j3d.utils.geometry.*;
import javax.media.j3d.*;
import javax.vecmath.*;

/*
 * frame.java
 *
 *
 * Copyright 2011 Thomas Buck <xythobuz@me.com>
 * Copyright 2011 Max Nuding <max.nuding@gmail.com>
 * Copyright 2011 Felix Bäder <baeder.felix@gmail.com>
 *
 * This file is part of LED-Cube.
 *
 * LED-Cube is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * LED-Cube is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with LED-Cube.  If not, see <http://www.gnu.org/licenses/>.
 */

public class frame extends JFrame implements ListSelectionListener {
  // Anfang Variablen
  private GraphicsConfiguration gConfig = SimpleUniverse.getPreferredConfiguration();
  private Canvas3D cubeCanvas = new Canvas3D(gConfig);
  SimpleUniverse universe;
  Transform3D transform3d;
  TransformGroup transroot;
  BranchGroup branchgroup;

  // Anfang Attribute
  private JButton editA = new JButton();
  private JButton editB = new JButton();
  private JButton editC = new JButton();
  private JButton editD = new JButton();
  private JButton editE = new JButton();
  private JButton editF = new JButton();
  private JButton editG = new JButton();
  private JButton editH = new JButton();
  private DefaultListModel frameListModel = new DefaultListModel();
  private JList frameList = new JList();
  private JScrollPane frameListScrollPane = new JScrollPane(frameList);
  private JButton frameUp = new JButton();
  private JButton frameDown = new JButton();
  private JButton frameAdd = new JButton();
  private JButton frameRemove = new JButton();
  private JButton frameRename = new JButton();
  private JButton frame = new JButton();
  private JList animList = new JList();
  private DefaultListModel animModel = new DefaultListModel();
  private JScrollPane animScrollPane = new JScrollPane(animList);
  private JButton animUp = new JButton();
  private JButton animDown = new JButton();
  private JButton animAdd = new JButton();
  private JButton animRemove = new JButton();
  private JButton animRename = new JButton();
  private JTextField animPath = new JTextField();
  private JButton load = new JButton();
  private JButton save = new JButton();
  private JButton saveAs = new JButton();
  private JComboBox jComboBox1 = new JComboBox();
  private JButton upload = new JButton();
  private JButton download = new JButton();
  private JLabel jLabel4 = new JLabel();
  private JTextField frameRemaining = new JTextField();
  private JLabel frmLngthLbl = new JLabel();
  private JTextField frmLngthTxt = new JTextField();
  // Ende Attribute

  private cubeWorker worker = new cubeWorker();
  private boolean fileSelected = false;
  // Ende Variablen

  private int saveExitDialog() {
    String[] Optionen = {"Yes", "No"};
    int Auswahl = JOptionPane.showOptionDialog(this, "Do you want to save your changes?", "Save?", JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE, null, Optionen, Optionen[0]);
    if (Auswahl == JOptionPane.YES_OPTION) {
       return 1;
    } else {
       return 0;
    }
  }

  private String askString(String title, String text) {
    return JOptionPane.showInputDialog(null, text, title, JOptionPane.QUESTION_MESSAGE);
  }

  private void errorMessage(String s) {
  String[] Optionen = {"OK"};
  JOptionPane.showOptionDialog(this, s, "Error!", JOptionPane.YES_OPTION, JOptionPane.ERROR_MESSAGE, null, Optionen, Optionen[0]);
  }

  public void valueChanged(ListSelectionEvent evt) {
    if ((!evt.getValueIsAdjusting()) && ((evt.getSource() == animList) || (evt.getSource() == frameList))) {
     int anim = animList.getSelectedIndex();
     int max;
   if (anim == -1){
        anim = 0;
     }
     if(evt.getSource() == frameList){
       max = worker.numOfAnimations();
     animModel.clear();
     } else {
       max = worker.numOfFrames(anim);
     frameListModel.clear();
     }

   // if value changed in anim, rebuild frame, else other way round
   for (int i = 0; i < max; i++) {
       if(evt.getSource() == animList){
      frameListModel.addElement(worker.getFrameName(anim, i));
      frameList.setModel(frameListModel);
       } else {
      animModel.addElement(worker.getAnimationName(i));
      animList.setModel(animModel);
       }
   }
    }
  }

  private void save() {
    if (fileSelected == false) {
        JFileChooser fc = new JFileChooser();
        int ret = fc.showSaveDialog(this);
        if (ret == JFileChooser.APPROVE_OPTION) {
          File file = fc.getSelectedFile();
          fileSelected = true;
          animPath.setText(file.getPath());
          worker.saveState(animPath.getText());
        }
      } else {
      worker.saveState(animPath.getText());
      }
  }

  public frame(String title) {
    // Frame-Initialisierung
    super(title);

    String[] sPorts = worker.getSerialPorts();
    for(int i = 0; i < sPorts.length; i++){
      jComboBox1.addItem(sPorts[i]);
    }
    
    for(int i = 0; i < worker.numOfAnimations(); i++){
      animModel.addElement(worker.getAnimationName(i));
    }

    addWindowListener(new WindowAdapter() {
      public void windowClosing(WindowEvent evt) {
             if (worker.changedStateSinceSave()) {
                  if (saveExitDialog() == 1) {
            save();
          } else {
            return;
          }
             }
             System.exit(0);
      }
    });
    int frameWidth = 661; 
    int frameHeight = 417;
    setSize(frameWidth, frameHeight);
    Dimension d = Toolkit.getDefaultToolkit().getScreenSize();
    int x = (d.width - getSize().width) / 2;
    int y = (d.height - getSize().height) / 2 ;
    setLocation(x, y);
    Container cp = getContentPane();
    cp.setLayout(null);
    // Anfang Komponenten

    //----- 3D-----
    //-------------
    cubeCanvas.setBounds(8, 8, 250, 250);
    cp.add(cubeCanvas);

    ColorCube cube1 = new ColorCube(0.3);
    universe = new SimpleUniverse(cubeCanvas);
    universe.getViewingPlatform().setNominalViewingTransform();
    transform3d = new Transform3D();
    transroot = new TransformGroup(transform3d);
    transform3d.rotZ (Math.toRadians(30));
    transroot.addChild(cube1);
    transform3d.setTranslation(new Vector3d(2,2,2));
    branchgroup = new BranchGroup();
    branchgroup.addChild(transroot);
    universe.addBranchGraph(branchgroup);
    
    
    
    //-------------

    editA.setBounds(264, 8, 107, 25);
    editA.setText("Layer A");
    editA.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(editA);
    editA.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        editA_ActionPerformed(evt);
      }
    });

    editB.setBounds(264, 40, 107, 25);
    editB.setText("Layer B");
    editB.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(editB);
    editB.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        editB_ActionPerformed(evt);
      }
    });

    editC.setBounds(264, 72, 107, 25);
    editC.setText("Layer C");
    editC.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(editC);
    editC.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        editC_ActionPerformed(evt);
      }
    });

    editD.setBounds(264, 104, 107, 25);
    editD.setText("Layer D");
    editD.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(editD);
    editD.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        editD_ActionPerformed(evt);
      }
    });

    editE.setBounds(264, 136, 107, 25);
    editE.setText("Layer E");
    editE.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(editE);
    editE.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        editE_ActionPerformed(evt);
      }
    });

    editF.setBounds(264, 168, 107, 25);
    editF.setText("Layer F");
    editF.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(editF);
    editF.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        editF_ActionPerformed(evt);
      }
    });

    editG.setBounds(264, 200, 107, 25);
    editG.setText("Layer G");
    editG.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(editG);
    editG.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        editG_ActionPerformed(evt);
      }
    });

    editH.setBounds(264, 232, 107, 25);
    editH.setText("Layer H");
    editH.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(editH);
    editH.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        editH_ActionPerformed(evt);
      }
    });

    frameListScrollPane.setBounds(384, 8, 145, 249);
    frameList.setModel(frameListModel);
    //frameListModel.addElement();
    cp.add(frameListScrollPane);

    frameUp.setBounds(544, 8, 107, 28);
    frameUp.setText("Move up");
    frameUp.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(frameUp);
    frameUp.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        frameUp_ActionPerformed(evt);
      }
    });

    frameDown.setBounds(544, 122, 107, 28);

    frameDown.setText("Move down");
    frameDown.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(frameDown);
    frameDown.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        frameDown_ActionPerformed(evt);
      }
    });

    frameAdd.setBounds(544, 46, 107, 28);
  frameRename.setText("Rename");
  frameRename.setFont(new Font("Dialog", Font.PLAIN, 13));
  cp.add(frameRename);
  frameRename.addActionListener(new ActionListener() {
    public void actionPerformed(ActionEvent evt) {
      int a = animList.getSelectedIndex();
      if (a < 0) {
        errorMessage("Select an animation!");
        return;
      }
      int f = frameList.getSelectedIndex();
      if (f < 0) {
        errorMessage("Select a frame!");
        return;
      }
      worker.setFrameName(askString("Rename", "Rename " + frameList.getSelectedValue() + "?"), a, f);
      frameListModel.set(f, worker.getFrameName(a, f));
      frameList.setModel(frameListModel);
    }
  });


    frameAdd.setText("Add");
    frameAdd.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(frameAdd);
    frameAdd.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        frameAdd_ActionPerformed(evt);
      }
    });


    frameRemove.setBounds(544, 84, 107, 28);

    frameRemove.setBounds(544, 84, 107, 33);

    frameRemove.setText("Remove");
    frameRemove.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(frameRemove);
    frameRemove.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        frameRemove_ActionPerformed(evt);
      }
    });
    
    frmLngthLbl.setBounds(536, 160, 113, 24);
    frmLngthLbl.setText("Length of a frame");
    frmLngthLbl.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(frmLngthLbl);
    
    frmLngthTxt.setBounds(536, 184, 113, 24);
    frmLngthTxt.setText("0");
    frmLngthTxt.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(frmLngthTxt);

    animScrollPane.setBounds(8, 264, 209, 121);
    animList.setModel(animModel);
    //jList2Model.addElement("");
    cp.add(animScrollPane);

    animUp.setBounds(224, 264, 99, 25);
    animUp.setText("Move up");
    animUp.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(animUp);
    animUp.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        animUp_ActionPerformed(evt);
      }
    });

    animDown.setBounds(224, 342, 99, 25);
    animDown.setText("Move down");
    animDown.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(animDown);
    animDown.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        animDown_ActionPerformed(evt);
      }
    });

  animRename.setBounds(224, 368, 99, 25);
  animRename.setText("Rename");
  animRename.setFont(new Font("Dialog", Font.PLAIN, 13));
  cp.add(animRename);
  animRename.addActionListener(new ActionListener() {
    public void actionPerformed(ActionEvent evt) {
      int a = animList.getSelectedIndex();
      if (a < 0) {
        errorMessage("Select an animation!");
        return;
      }
      worker.setAnimationName(askString("Rename", "Rename " + animList.getSelectedValue() + "?"), a);
      animModel.set(a, worker.getAnimationName(a));
      animList.setModel(animModel);
    }
  });

    animAdd.setBounds(224, 290, 99, 25);
    animAdd.setText("Add");
    animAdd.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(animAdd);
    animAdd.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        animAdd_ActionPerformed(evt);
      }
    });

    animRemove.setBounds(224, 316, 99, 25);
    animRemove.setText("Remove");
    animRemove.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(animRemove);
    animRemove.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        animRemove_ActionPerformed(evt);
      }
    });

    animPath.setBounds(344, 264, 305, 24);
    animPath.setEditable(false);
    animPath.setText("Load/Save an animation file...");
    animPath.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(animPath);
    load.setBounds(344, 296, 100, 25);
    load.setText("Load");
    load.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(load);
    load.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        load_ActionPerformed(evt);
      }
    });

    save.setBounds(454, 296, 100, 25);
    save.setText("Save");
    save.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(save);
    save.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        save_ActionPerformed(evt);
      }
    });

  saveAs.setBounds(564, 296, 90, 25);
  saveAs.setText("Save As");
  saveAs.setFont(new Font("Dialog", Font.PLAIN, 13));
  cp.add(saveAs);
  saveAs.addActionListener(new ActionListener() {
    public void actionPerformed(ActionEvent evt) {
      saveAs_ActionPerformed(evt);
    }
  });

    jComboBox1.setBounds(344, 328, 305, 24);
    jComboBox1.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(jComboBox1);
    upload.setBounds(344, 360, 147, 25);
    upload.setText("Upload");
    upload.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(upload);
    upload.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        upload_ActionPerformed(evt);
      }
    });

    download.setBounds(504, 360, 147, 25);
    download.setText("Download");
    download.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(download);
    download.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        download_ActionPerformed(evt);
      }
    });

    jLabel4.setBounds(536, 208, 112, 20);
    jLabel4.setText("Remaining:");
    jLabel4.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(jLabel4);
    frameRemaining.setBounds(536, 232, 113, 24);
    frameRemaining.setEditable(false);
    frameRemaining.setText(String.valueOf(worker.framesRemaining()));
    frameRemaining.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(frameRemaining);
    animList.setFont(new Font("Dialog", Font.PLAIN, 13));
    frameList.setFont(new Font("Dialog", Font.PLAIN, 13));
    // Ende Komponenten
    animList.addListSelectionListener(this);
    setResizable(false);
    setVisible(true);
  }

  // Anfang Methoden

  // Anfang Ereignisprozeduren
  public void editA_ActionPerformed(ActionEvent evt) {

     layerEditFrame layerFrame1 = new layerEditFrame(animList.getSelectedIndex(), frameList.getSelectedIndex(), 0, worker);
  }

  public void editB_ActionPerformed(ActionEvent evt) {
     // layerEditFrame layerFrame1 = new layerEditFrame(worker.getLayer(1));
  }

  public void editC_ActionPerformed(ActionEvent evt) {
    // layerEditFrame layerFrame1 = new layerEditFrame(worker.getLayer(2));
  }

  public void editD_ActionPerformed(ActionEvent evt) {
    // layerEditFrame layerFrame1 = new layerEditFrame(worker.getLayer(3));
  }

  public void editE_ActionPerformed(ActionEvent evt) {
    // layerEditFrame layerFrame1 = new layerEditFrame(worker.getLayer(4));
  }

  public void editF_ActionPerformed(ActionEvent evt) {
    // layerEditFrame layerFrame1 = new layerEditFrame(worker.getLayer(5));
  }

  public void editG_ActionPerformed(ActionEvent evt) {
    // layerEditFrame layerFrame1 = new layerEditFrame(worker.getLayer(6));
  }

  public void editH_ActionPerformed(ActionEvent evt) {
    // layerEditFrame layerFrame1 = new layerEditFrame(worker.getLayer(7));
  }

  public void frameUp_ActionPerformed(ActionEvent evt) {
         int i = frameList.getSelectedIndex();
         if ((i > 0) && (frameListModel.getSize() >= 2)) {
            Object tmp = frameListModel.get(i);
            frameListModel.set(i, frameListModel.get(i - 1));
            frameListModel.set(i - 1, tmp);
            frameList.setSelectedIndex(i - 1);
            worker.moveFrame(worker.UP, animList.getSelectedIndex(), frameList.getSelectedIndex());
         }
  }

  public void frameDown_ActionPerformed(ActionEvent evt) {
         int i = frameList.getSelectedIndex();
         if ((i >= 0) && (frameListModel.getSize() >= 2) && (i < (frameListModel.getSize() - 1))) {
            Object tmp = frameListModel.get(i);
            frameListModel.set(i, frameListModel.get(i + 1));
            frameListModel.set(i + 1, tmp);
            frameList.setSelectedIndex(i + 1);
            worker.moveFrame(worker.DOWN, animList.getSelectedIndex(), frameList.getSelectedIndex());
         }
  }

  public void frameAdd_ActionPerformed(ActionEvent evt) {
         if(animList.getSelectedIndex() == -1){
            errorMessage("Please select an animation!");
         } else {
           worker.addFrame(animList.getSelectedIndex());
           frameRemaining.setText(Integer.toString(worker.framesRemaining()));
           int n = worker.numOfFrames(animList.getSelectedIndex()) - 1;
           if (n < 0) {
              n = 0;
           }
           frameListModel.add(n, worker.getFrameName(animList.getSelectedIndex(), n));
           frameList.setModel(frameListModel);
         }

  }

  public void frameRemove_ActionPerformed(ActionEvent evt) {
         worker.removeFrame(animList.getSelectedIndex(), frameList.getSelectedIndex());
         frameRemaining.setText(Integer.toString(worker.framesRemaining()));
     frameListModel.removeElementAt(frameList.getSelectedIndex());
     frameList.setModel(frameListModel);
  }

  public void animUp_ActionPerformed(ActionEvent evt) {
         int i = animList.getSelectedIndex();
         if ((i > 0) && (animModel.getSize() >= 2)) {
            Object tmp = animModel.get(i);
            animModel.set(i, animModel.get(i - 1));
            animModel.set(i - 1, tmp);
            animList.setSelectedIndex(i - 1);
            worker.moveAnimation(worker.UP, animList.getSelectedIndex());
         }
  }

  public void animDown_ActionPerformed(ActionEvent evt) {
         int i = animList.getSelectedIndex();
         if ((i >= 0) && (animModel.getSize() >= 2) && (i < (animModel.getSize() - 1))) {
            Object tmp = animModel.get(i);
            animModel.set(i, animModel.get(i + 1));
            animModel.set(i + 1, tmp);
            animList.setSelectedIndex(i + 1);
            worker.moveAnimation(worker.DOWN, animList.getSelectedIndex());
         }
  }

  public void animAdd_ActionPerformed(ActionEvent evt) {
    if(worker.addAnimation() == -1){
      errorMessage("Could not add animation!");
    } else {
    int n = worker.numOfAnimations() - 1;
    // would have 0 anims after successfully adding one...
  /*if (n < 0) {
      n = 0;
    }*/
    animModel.clear();
    for (int i = 0; i < (n + 1); i++) {
        animModel.add(i, worker.getAnimationName(i));
    }
    animList.setModel(animModel);
    }

  }

  public void animRemove_ActionPerformed(ActionEvent evt) {
     worker.removeAnimation(animList.getSelectedIndex());
   animModel.removeElementAt(animList.getSelectedIndex());
   animList.setModel(animModel);
  }

  public void load_ActionPerformed(ActionEvent evt) {
  JFileChooser fc = new JFileChooser();
  int ret = fc.showOpenDialog(this);
  if (ret == JFileChooser.APPROVE_OPTION) {
    File file = fc.getSelectedFile();
    if (fileSelected == false) {
      fileSelected = true;
    }
    animPath.setText(file.getPath());
    worker.loadState(animPath.getText());
  animModel.clear();
  for (int i = 0; i < worker.numOfAnimations(); i++) {
    animModel.addElement(worker.getAnimationName(i));
  }
  animList.setModel(animModel);

  frameListModel.clear();
  frameList.setModel(frameListModel);
  }
  }

  public void save_ActionPerformed(ActionEvent evt) {
  if (fileSelected == false) {
    JFileChooser fc = new JFileChooser();
    int ret = fc.showSaveDialog(this);
    if (ret == JFileChooser.APPROVE_OPTION) {
      File file = fc.getSelectedFile();
      fileSelected = true;
      animPath.setText(file.getPath());
      worker.saveState(animPath.getText());
    }
  } else {
    worker.saveState(animPath.getText());
  }
  }

  public void saveAs_ActionPerformed(ActionEvent evt) {
  JFileChooser fc;
  if (fileSelected == true) {
    fc = new JFileChooser(new File(animPath.getText()).getParentFile());
  } else {
    fc = new JFileChooser();
  }
  int ret = fc.showSaveDialog(this);
  if (ret == JFileChooser.APPROVE_OPTION) {
    File file = fc.getSelectedFile();
    if (fileSelected == false) {
      fileSelected = true;
    }
    animPath.setText(file.getPath());
    worker.saveState(animPath.getText());
  }
  }


  public void upload_ActionPerformed(ActionEvent evt) {
         if (jComboBox1.getSelectedItem().equals("Select serial port...")) {
            errorMessage("No serial port selected...");
         } else {
           worker.uploadState((String)jComboBox1.getSelectedItem());
         }
  }

  public void download_ActionPerformed(ActionEvent evt) {
         if (jComboBox1.getSelectedItem().equals("Select serial port...")) {
      errorMessage("No serial port selected...");
         } else {
           worker.downloadState((String)jComboBox1.getSelectedItem());
         }
  }

  // Ende Ereignisprozeduren

  public static void main(String[] args) {
    new frame("Cube Control");
  }
  // Ende Methoden
}

