/*
 * Frame.java
 *
 *
 * Copyright 2011 Thomas Buck <xythobuz@me.com>
 * Copyright 2011 Max Nuding <max.nuding@gmail.com>
 * Copyright 2011 Felix BÃƒÂ¤der <baeder.felix@gmail.com>
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
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with LED-Cube. If not, see <http://www.gnu.org/licenses/>.
 */
import com.sun.j3d.utils.universe.*;
import javax.media.j3d.*;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.event.*;
import java.io.File;
import javax.vecmath.Point2d;
import javax.vecmath.Point3d;

public class Frame extends JFrame implements ListSelectionListener {

  private static final long serialVersionUID = 23421337L;
  // Anfang Variablen
  private GraphicsConfiguration gConfig = SimpleUniverse
      .getPreferredConfiguration();
  private Canvas3D cubeCanvas = new Canvas3D(gConfig);
  public Led3D ledView = new Led3D(cubeCanvas);

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
  public JList frameList = new JList();
  private JScrollPane frameListScrollPane = new JScrollPane(frameList);
  private JButton frameUp = new JButton();
  private JButton frameDown = new JButton();
  private JButton frameAdd = new JButton();
  private JButton frameRemove = new JButton();
  private JButton frameRename = new JButton();
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
  public JComboBox jComboBox1 = new JComboBox();
  private JButton upload = new JButton();
  private JButton download = new JButton();
  private JLabel jLabel4 = new JLabel();
  private JTextField frameRemaining = new JTextField();
  private JLabel frameLengthLabel = new JLabel();
  private JTextField frameLengthText = new JTextField();
  private JButton frameDuration = new JButton();
  private JButton fullScreenButton = new JButton();
  private JButton playAnimation = new JButton();
  private JButton exitButton;
  private JButton playAnimationFullscreen = new JButton();
  private JPanel previewPanel = new JPanel();
  private JPanel framePanel = new JPanel();
  private JPanel animPanel = new JPanel();
  private JPanel filePanel = new JPanel();
  private JPanel serialPanel = new JPanel();
  private JPanel settingsPanel = new JPanel();
  
  // Ende Attribute

  public cubeWorker worker = new cubeWorker(this);
  private boolean fileSelected = false;
  private Frame thisFrame;

  // Ende Variablen

  private int saveExitDialog() {
    String[] Optionen = { "Yes", "No" };
    int Auswahl = JOptionPane.showOptionDialog(this,
        "Do you want to save your changes?", "Save?",
        JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE, null,
        Optionen, Optionen[0]);
    if (Auswahl == JOptionPane.YES_OPTION) {
      return 1;
    } else {
      return 0;
    }
  }

  public String askString(String title, String text) {
    return JOptionPane.showInputDialog(null, text, title,
        JOptionPane.QUESTION_MESSAGE);
  }

  public void errorMessage(String s) {
    String[] Optionen = { "OK" };
    JOptionPane.showOptionDialog(this, s, "Error!", JOptionPane.YES_OPTION,
        JOptionPane.ERROR_MESSAGE, null, Optionen, Optionen[0]);
  }

  public void errorMessage(String title, String msg) {
    String[] Optionen = { "OK" };
    JOptionPane.showOptionDialog(this, msg, title, JOptionPane.YES_OPTION,
        JOptionPane.ERROR_MESSAGE, null, Optionen, Optionen[0]);
  }

  public void valueChanged(ListSelectionEvent evt) {
    if ((!evt.getValueIsAdjusting())
        && ((evt.getSource() == animList) || (evt.getSource() == frameList))) {
      // If animList or framsList is the source, we act...

      if ((evt.getSource() == animList)
          && (animList.getSelectedIndex() != -1)) {
        // animList selection changed, update frameList
        frameListModel.clear();

        // System.out.println("Selected Animation: " + animList.getSelectedIndex());
        int max = worker.getAnimation(animList.getSelectedIndex()).size();

        for (int i = 0; i < max; i++) {
          frameListModel.addElement(worker.getAnimation(
              animList.getSelectedIndex()).getFrame(i).getName());
        }
        frameList.setModel(frameListModel);
      }

      // If both selections are valid, update Frame duration and set 3D
      // data
      if ((animList.getSelectedIndex() != -1) && (frameList.getSelectedIndex() != -1)) {
        ledView.setData(worker.getAnimation(animList.getSelectedIndex()).getFrame(frameList.getSelectedIndex()).getData());
        frameLengthText.setText(Integer.toString(worker.getAnimation(animList.getSelectedIndex()).getFrame(frameList.getSelectedIndex()).getTime()));
      } else {
        // clear Frame duration
        frameLengthText.setText("");
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

  public Frame(String title) {
    // Frame-Initialisierung
    super(title);
    thisFrame = this;
    this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

    String[] sPorts = HelperUtility.getPorts();
    for (int i = 0; i < sPorts.length; i++) {
      jComboBox1.addItem(sPorts[i]);
    }

    for (int i = 0; i < worker.size(); i++) {
      animModel.addElement(worker.getAnimation(i).getName());
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
    int frameWidth = 672;
    int frameHeight = 656;
    setSize(frameWidth, frameHeight);
    Dimension d = Toolkit.getDefaultToolkit().getScreenSize();
    int x = (d.width - getSize().width) / 2;
    int y = (d.height - getSize().height) / 2;
    setLocation(x, y);
    Container cp = getContentPane();
    cp.setLayout(null);
    // Anfang Komponenten

    // ----- 3D-----
    // -------------
    cubeCanvas.setBounds(18, 31, 275, 275);
    cubeCanvas.addMouseListener(new MouseListener() {
      public void mouseClicked(MouseEvent e){
        Point2d mousePos = convertMousePositionToWorld(e.getX(), e.getY()); 
      }
      public void mouseExited(MouseEvent e){}
      public void mouseEntered(MouseEvent e){}
      public void mouseReleased(MouseEvent e){}
      public void mousePressed(MouseEvent e){}

    });
    cp.add(cubeCanvas);

    // -------------

    editA.setBounds(299, 32, 102, 29);
    editA.setText("Layer A");
    editA.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(editA);
    editA.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        if (animList.getSelectedIndex() == -1) {
          errorMessage("Please select an animation.");
        } else if (frameList.getSelectedIndex() == -1) {
          errorMessage("Please select a Frame.");
        } else {
          layerEditFrame layerFrame1 = new layerEditFrame(animList.getSelectedIndex(), frameList.getSelectedIndex(), 0, worker, thisFrame);
        }
      }
    });

    editB.setBounds(299, 67, 102, 29);
    editB.setText("Layer B");
    editB.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(editB);
    editB.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        if (animList.getSelectedIndex() == -1) {
          errorMessage("Please select an animation.");
        } else if (frameList.getSelectedIndex() == -1) {
          errorMessage("Please select a Frame.");
        } else {
          layerEditFrame layerFrame1 = new layerEditFrame(animList.getSelectedIndex(), frameList.getSelectedIndex(), 1, worker, thisFrame);
        }
      }
    });

    editC.setBounds(299, 102, 102, 29);
    editC.setText("Layer C");
    editC.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(editC);
    editC.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        if (animList.getSelectedIndex() == -1) {
          errorMessage("Please select an animation.");
        } else if (frameList.getSelectedIndex() == -1) {
          errorMessage("Please select a Frame.");
        } else {
          layerEditFrame layerFrame1 = new layerEditFrame(animList.getSelectedIndex(), frameList.getSelectedIndex(), 2, worker, thisFrame);
        }
      }
    });

    editD.setBounds(299, 137, 102, 29);
    editD.setText("Layer D");
    editD.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(editD);
    editD.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        if (animList.getSelectedIndex() == -1) {
          errorMessage("Please select an animation.");
        } else if (frameList.getSelectedIndex() == -1) {
          errorMessage("Please select a Frame.");
        } else {
          layerEditFrame layerFrame1 = new layerEditFrame(animList.getSelectedIndex(), frameList.getSelectedIndex(), 3, worker, thisFrame);
        }
      }
    });

    editE.setBounds(299, 172, 102, 29);
    editE.setText("Layer E");
    editE.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(editE);
    editE.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        if (animList.getSelectedIndex() == -1) {
          errorMessage("Please select an animation.");
        } else if (frameList.getSelectedIndex() == -1) {
          errorMessage("Please select a Frame.");
        } else {
          layerEditFrame layerFrame1 = new layerEditFrame(animList.getSelectedIndex(), frameList.getSelectedIndex(), 4, worker, thisFrame);
        }
      }
    });

    editF.setBounds(299, 207, 102, 29);
    editF.setText("Layer F");
    editF.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(editF);
    editF.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        if (animList.getSelectedIndex() == -1) {
          errorMessage("Please select an animation.");
        } else if (frameList.getSelectedIndex() == -1) {
          errorMessage("Please select a Frame.");
        } else {
          layerEditFrame layerFrame1 = new layerEditFrame(animList.getSelectedIndex(), frameList.getSelectedIndex(), 5, worker, thisFrame);
        }
      }
    });

    editG.setBounds(299, 242, 102, 29);
    editG.setText("Layer G");
    editG.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(editG);
    editG.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        if (animList.getSelectedIndex() == -1) {
          errorMessage("Please select an animation.");
        } else if (frameList.getSelectedIndex() == -1) {
          errorMessage("Please select a Frame.");
        } else {
          layerEditFrame layerFrame1 = new layerEditFrame(animList.getSelectedIndex(), frameList.getSelectedIndex(), 6, worker, thisFrame);
        }
      }
    });

    editH.setBounds(299, 277, 102, 29);
    editH.setText("Layer H");
    editH.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(editH);
    editH.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        if (animList.getSelectedIndex() == -1) {
          errorMessage("Please select an animation.");
        } else if (frameList.getSelectedIndex() == -1) {
          errorMessage("Please select a Frame.");
        } else {
          layerEditFrame layerFrame1 = new layerEditFrame(animList.getSelectedIndex(), frameList.getSelectedIndex(), 7, worker, thisFrame);
        }
      }
    });

    frameListScrollPane.setBounds(339, 379, 187, 218);
    frameList.setModel(frameListModel);
    cp.add(frameListScrollPane);

    frameUp.setBounds(532, 378, 110, 39);
    frameUp.setText("Move up");
    frameUp.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(frameUp);
    frameUp.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        int i = frameList.getSelectedIndex();
        if ((i > 0) && (frameListModel.getSize() >= 2)) {
          Object tmp = frameListModel.get(i);
          frameListModel.set(i, frameListModel.get(i - 1));
          frameListModel.set(i - 1, tmp);
          frameList.setSelectedIndex(i - 1);
          worker.getAnimation(animList.getSelectedIndex()).moveFrameUp(i);
        }
      }
    });

    frameDown.setBounds(532, 558, 110, 39);
    frameDown.setText("Move down");
    frameDown.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(frameDown);
    frameDown.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        int i = frameList.getSelectedIndex();
        if ((i >= 0) && (frameListModel.getSize() >= 2) && (i < (frameListModel.getSize() - 1))) {
          Object tmp = frameListModel.get(i);
          frameListModel.set(i, frameListModel.get(i + 1));
          frameListModel.set(i + 1, tmp);
          frameList.setSelectedIndex(i + 1);
          worker.getAnimation(animList.getSelectedIndex()).moveFrameDown(i);
        }
      }
    });

    frameAdd.setBounds(532, 423, 110, 39);
    frameAdd.setText("Add");
    frameAdd.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(frameAdd);
    frameAdd.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        if (animList.getSelectedIndex() == -1) {
          errorMessage("Please select an animation!");
        } else {
          int n = worker.getAnimation(animList.getSelectedIndex()).size();
          worker.getAnimation(animList.getSelectedIndex()).addFrame();
      // Not reaching past this comment if frame list empty
          frameRemaining.setText(Integer.toString(worker.memoryRemaining()));
          frameListModel.add(n, worker.getAnimation(animList.getSelectedIndex()).getFrame(n).getName());
          frameList.setModel(frameListModel);
        }
      }
    });

    frameRemove.setBounds(532, 468, 110, 39);
    frameRemove.setText("Remove");
    frameRemove.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(frameRemove);
    frameRemove.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        if (animList.getSelectedIndex() == -1) {
          errorMessage("Select an animation.");
        } else if (frameList.getSelectedIndex() == -1) {
          errorMessage("Select a Frame.");
        } else {
          worker.getAnimation(animList.getSelectedIndex()).removeFrame(frameList.getSelectedIndex());
          frameRemaining.setText(Integer.toString(worker.memoryRemaining()));
          frameListModel.removeElementAt(frameList.getSelectedIndex());
          frameList.setModel(frameListModel);
        }
      }
    });

    frameRename.setBounds(532, 513, 110, 39);
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
          errorMessage("Select a Frame!");
          return;
        }
        worker.getAnimation(a).getFrame(f).setName(askString("Rename", "Rename " + frameList.getSelectedValue() + "?"));
        frameListModel.set(f, worker.getAnimation(a).getFrame(f).getName());
        frameList.setModel(frameListModel);
      }
    });

    frameLengthLabel.setBounds(429, 118, 82, 13);
    frameLengthLabel.setText("Time (1/24 sec)");
    frameLengthLabel.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(frameLengthLabel);

    frameLengthText.setBounds(429, 134, 31, 20);
    frameLengthText.setText("");
    frameLengthText.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(frameLengthText);
    
    fullScreenButton.setText("Fullscreen");
    fullScreenButton.setBounds(18, 312, 134, 35);
    fullScreenButton.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(fullScreenButton);
    fullScreenButton.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        ledView.enterFullscreen();
        setLocation(0,0);
        setSize(700, 700);
        int w = Toolkit.getDefaultToolkit().getScreenSize().width;
        int h = Toolkit.getDefaultToolkit().getScreenSize().height;
        setSize(w - 5, h - 30);
        playAnimationFullscreen.setVisible(true);
        cubeCanvas.setBounds(0, 0, w - 5, h - 80);
      }
    });

    exitButton = new JButton("Exit Fullscreen");
    exitButton.setBounds(Toolkit.getDefaultToolkit().getScreenSize().width-150, Toolkit.getDefaultToolkit().getScreenSize().height-80, 150, 25);
    cp.add(exitButton);
    exitButton.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        playAnimationFullscreen.setVisible(false);
        setLocation(0,0);
        setSize(661, 440);
        ledView.leaveFullscreen();
        cubeCanvas.setBounds(8,8, 250,250);
        Dimension d = Toolkit.getDefaultToolkit().getScreenSize();
        int x = (d.width - getSize().width) / 2;
        int y = (d.height - getSize().height) / 2;
        setLocation(x, y);
      }
    });

    playAnimation.setText("Play");
    playAnimation.setBounds(159, 312, 134, 35);
    playAnimation.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(playAnimation);
    playAnimation.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt){
        if (animList.getSelectedIndex() == -1) {
          errorMessage("Please select an animation.");
        } else if (frameList.getSelectedIndex() == -1) {
          errorMessage("Please select a Frame.");
        } else {
          for(int i = 0; i < frameList.getModel().getSize(); i++){
            frameList.setSelectedIndex(i);
            short time1 = worker.getAnimation(animList.getSelectedIndex()).getFrame(frameList.getSelectedIndex()).getTime();
            long time = (long) (((time1+1) * 1/24) * 1000);
            try {
              Thread.sleep(time);
            } catch(Exception e) {
              System.out.println(e);
            }
          } 
        }
      }
    });

    playAnimationFullscreen.setText("Play");
    playAnimationFullscreen.setBounds(Toolkit.getDefaultToolkit().getScreenSize().width-310, Toolkit.getDefaultToolkit().getScreenSize().height-80, 150, 25);
    playAnimationFullscreen.setFont(new Font("Dialog", Font.PLAIN, 13));
    playAnimationFullscreen.setVisible(false);
    cp.add(playAnimationFullscreen);
    playAnimationFullscreen.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt){
        if (animList.getSelectedIndex() == -1) {
          errorMessage("Please select an animation.");
        } else if (frameList.getSelectedIndex() == -1) {
          errorMessage("Please select a Frame.");
        } else {
          for(int i = 0; i < frameList.getModel().getSize(); i++){
            frameList.setSelectedIndex(i);
            short time1 = worker.getAnimation(animList.getSelectedIndex()).getFrame(frameList.getSelectedIndex()).getTime();
            long time = (long) (((time1+1) * 1/24) * 1000);
            try {
              Thread.sleep(time);
            } catch(Exception e) {
              System.out.println(e);
            }
          } 
        }
      }
    });

    frameDuration.setBounds(462, 134, 49, 20);
    frameDuration.setText("OK");
    frameDuration.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(frameDuration);
    frameDuration.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        if (frameLengthText.getText().equals("0")) {
          errorMessage("0 is not a valid value!");
          frameLengthText.setText("1");
        } else if (Integer.parseInt(frameLengthText.getText()) > 256) {
          errorMessage("Value too high. Max: 256");
          frameLengthText.setText("256");
          return;
        } else {
          if (animList.getSelectedIndex() == -1) {
            errorMessage("Please select an animation!");
            return;
          }
          if (frameList.getSelectedIndex() == -1) {
            errorMessage("Please select a Frame!");
            return;
          }
          worker.getAnimation(animList.getSelectedIndex()).getFrame(frameList.getSelectedIndex()).setTime((byte)(Integer.parseInt(frameLengthText.getText()) - 1));
        }
      }
    });
        

    animScrollPane.setBounds(18, 378, 187, 219);
    animList.setModel(animModel);
    cp.add(animScrollPane);

    animUp.setBounds(211, 378, 110, 39);
    animUp.setText("Move up");
    animUp.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(animUp);
    animUp.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        int i = animList.getSelectedIndex();
        if ((i > 0) && (animModel.getSize() >= 2)) {
          Object tmp = animModel.get(i);
          animModel.set(i, animModel.get(i - 1));
          animModel.set(i - 1, tmp);
          animList.setSelectedIndex(i - 1);
          worker.moveAnimationUp(i);
        }
      }
    });

    animDown.setBounds(211, 423, 110, 39);
    animDown.setText("Move down");
    animDown.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(animDown);
    animDown.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        int i = animList.getSelectedIndex();
        if ((i >= 0) && (animModel.getSize() >= 2) && (i < (animModel.getSize() - 1))) {
          Object tmp = animModel.get(i);
          animModel.set(i, animModel.get(i + 1));
          animModel.set(i + 1, tmp);
          animList.setSelectedIndex(i + 1);
          worker.moveAnimationDown(i);
        }
      }
    });

    animRename.setBounds(211, 468, 110, 39);
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
        worker.getAnimation(a).setName(askString("Rename", "Rename " + animList.getSelectedValue() + "?"));
        animModel.set(a, worker.getAnimation(a).getName());
        animList.setModel(animModel);
      }
    });

    animAdd.setBounds(211, 513, 110, 39);
    animAdd.setText("Add");
    animAdd.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(animAdd);
    animAdd.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        if (worker.addAnimation() == -1) {
          errorMessage("Could not add animation!");
        } else {
          animModel.clear();
          for (int i = 0; i < worker.size(); i++) {
            animModel.add(i, worker.getAnimation(i).getName());
          }
          animList.setModel(animModel);
        }
      }
    });

    animRemove.setBounds(211, 558, 110, 39);
    animRemove.setText("Remove");
    animRemove.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(animRemove);
    animRemove.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        if (animList.getSelectedIndex() == -1) {
          errorMessage("Select an animation.");
        } else {
          worker.removeAnimation(animList.getSelectedIndex());
          animModel.removeElementAt(animList.getSelectedIndex());
          animList.setModel(animModel);
        }
      }
    });

    animPath.setBounds(417, 281, 228, 20);
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
        JFileChooser fc = new JFileChooser();
        int ret = fc.showOpenDialog(thisFrame);
        if (ret == JFileChooser.APPROVE_OPTION) {
          File file = fc.getSelectedFile();
          if (fileSelected == false) {
            fileSelected = true;
          }
          animPath.setText(file.getPath());
          worker.loadState(animPath.getText());
          animModel.clear();
          for (int i = 0; i < worker.size(); i++) {
            animModel.addElement(worker.getAnimation(i).getName());
          }
          animList.setModel(animModel);

          frameListModel.clear();
          frameList.setModel(frameListModel);
        }
      }
    });

    save.setBounds(495, 307, 72, 39);
    save.setText("Save");
    save.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(save);
    save.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        if (fileSelected == false) {
          JFileChooser fc = new JFileChooser();
          int ret = fc.showSaveDialog(thisFrame);
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
    });

    saveAs.setBounds(573, 307, 72, 39);
    saveAs.setText("Save As");
    saveAs.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(saveAs);
    saveAs.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        JFileChooser fc;
        if (fileSelected == true) {
          fc = new JFileChooser(new File(animPath.getText()).getParentFile());
        } else {
          fc = new JFileChooser();
        }
        int ret = fc.showSaveDialog(thisFrame);
        if (ret == JFileChooser.APPROVE_OPTION) {
          File file = fc.getSelectedFile();
          if (fileSelected == false) {
            fileSelected = true;
          }
          animPath.setText(file.getPath());
          worker.saveState(animPath.getText());
        }
      }
    });

    jComboBox1.setBounds(417, 186, 228, 21);
    jComboBox1.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(jComboBox1);
    upload.setBounds(417, 212, 111, 39);
    upload.setText("Upload");
    upload.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(upload);
    upload.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        if (jComboBox1.getSelectedItem().equals("Select serial port...")) {
          // errorMessage("No serial port selected...");
        } else {
          if (worker.cubeProbeConnected((String) jComboBox1.getSelectedItem())) {
            if (worker.cubeSendState((String) jComboBox1.getSelectedItem()) != 0) {
              // errorMessage("Could not upload data!");
            }
          } else {
            // errorMessage("Cube does not respond...");
          }
        }
      }
    });

    download.setBounds(534, 212, 111, 39);
    download.setText("Download");
    download.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(download);
    download.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        if (jComboBox1.getSelectedItem().equals("Select serial port...")) {
          // errorMessage("No serial port selected...");
        } else {
          if (worker.cubeProbeConnected((String) jComboBox1.getSelectedItem())) {
            if (worker.cubeGetState((String) jComboBox1.getSelectedItem()) != 0) {
              // errorMessage("Could not download data!");
            }
          } else {
            // errorMessage("Cube does not respond...");
          }
        }
      }
    });

    jLabel4.setBounds(536, 208, 112, 20);
    jLabel4.setText("Remaining:");
    jLabel4.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(jLabel4);
    frameRemaining.setBounds(520, 134, 49, 20);
    frameRemaining.setEditable(false);
    frameRemaining.setText(String.valueOf(worker.memoryRemaining()));
    frameRemaining.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(frameRemaining);
    animList.setFont(new Font("Dialog", Font.PLAIN, 13));
    frameList.setFont(new Font("Dialog", Font.PLAIN, 13));

    previewPanel.setBounds(8, 12, 399, 342);
    previewPanel.setBorder(BorderFactory.createTitledBorder("Preview"));
    cp.add(previewPanel);

    framePanel.setBounds(331, 360, 321, 246);
    framePanel.setBorder(BorderFactory.createTitledBorder("Frame"));
    cp.add(framePanel);

    animPanel.setBounds(8, 360, 321, 246);
    animPanel.setBorder(BorderFactory.createTitledBorder("Animation"));
    cp.add(animPanel);

    filePanel.setBounds(409, 262, 243, 92);
    filePanel.setBorder(BorderFactory.createTitledBorder("Load/Save"));
    cp.add(filePanel);

    serialPanel.setBounds(409, 167, 243, 92);
    serialPanel.setBorder(BorderFactory.createTitledBorder("Serial communication"));
    cp.add(serialPanel);

    settingsPanel.setBounds(409, 100, 243, 65);
    settingsPanel.setBorder(BorderFactory.createTitledBorder("Serial communication"));
    cp.add(settingsPanel);

    // Ende Komponenten
    animList.addListSelectionListener(this);
    frameList.addListSelectionListener(this);
    setResizable(false);
    setVisible(true);
  }

  public Led3D get3D() {
    return ledView;
  }

  public static void main(String[] args) {
    Frame f = new Frame("Cube Control");
    Led3D l = f.get3D();
    String lastCommand = null;
    java.util.Scanner sc = new java.util.Scanner(System.in);
    System.out.println("#### Cube Control Debug Console ####");
    System.out.println("## Enter a Command ('h' for help) ##");
    System.out.print("$> ");

    do {
      if (sc.hasNextLine()) {
        String s = sc.nextLine();

        // Up arrow key
        if (s.equals("\u001B[A")) {
          if (lastCommand != null) {
            System.out.println("Last command: " + lastCommand);
            s = new String(lastCommand);
          } else {
            System.out.println("No last command!");
          }
        }

        if (s.equals("p") || (s.equals("print")))
          l.printTranslationData();

        if (s.equals("q") || s.equals("quit"))
          System.exit(0);

        if (s.equals("on") || s.equals("1")) {
          short[] d = new short[64];
          for (int i = 0; i < d.length; i++) {
            d[i] = 0xFF;
          }
          l.setData(d);
          System.out.println("All LEDs on now...");
        }

        if (s.equals("off") || s.equals("0")) {
          short[] d = new short[64];
          for (int i = 0; i < d.length; i++) {
            d[i] = 0x00;
          }
          l.setData(d);
          System.out.println("All LEDs off now...");
        }

        if (s.equals("r") || s.equals("reset")) {
          l.resetView();
        }

        if (s.startsWith("port ")) {
          f.jComboBox1.addItem(s.substring(5));
          f.jComboBox1.setSelectedItem(s.substring(5));
        }

        if (s.startsWith("send ")) {
          HelperUtility.openPort((String) f.jComboBox1
              .getSelectedItem());
          short[] dat = toShortArray(s.substring(5));
          HelperUtility.writeData(dat, dat.length);
          HelperUtility.closePort();
        }

        if (s.startsWith("read ")) {
          int leng = Integer.parseInt(s.substring(5));
          HelperUtility.openPort((String) f.jComboBox1
              .getSelectedItem());
          short[] data = HelperUtility.readData(leng);
          System.out.println(shortToString(data));
          HelperUtility.closePort();
        }

        if (s.startsWith("frames ")) {
          int anim = Integer.parseInt(s.substring(7));
          if (anim >= f.worker.size()) {
            System.out.println("Animation does not exist! Max: " + (f.worker.size() - 1));
          } else {
            System.out.println("Animation: " + f.worker.getAnimation(anim).getName());
            for (int i = 0; i < f.worker.getAnimation(anim).size(); i++) {
              AFrame frame = f.worker.getAnimation(anim).getFrame(i);
              System.out.println("\tFrame (" + frame.getTime() + "): " + frame.getName());
            }
          }
        }

        if (s.equals("a") || s.equals("anims")) {
          for (int i = 0; i < f.worker.size(); i++) {
            Animation anim = f.worker.getAnimation(i);
            System.out.println("\tAnimation: " + anim.getName());
          }
        }

        if (s.equals("s") || s.equals("scan")) {
          String[] sPorts = HelperUtility.getPorts();
          f.jComboBox1.removeAllItems();
          for (int i = 0; i < sPorts.length; i++) {
            System.out.println("Port " + i + ": " + sPorts[i]);
            f.jComboBox1.addItem(sPorts[i]);
          }
        }

        if (s.equals("h") || (s.equals("help"))) {
          System.out.println("Commands:");
          System.out
              .println("\t'port *name*'\t:\tSet serial port to this");
          System.out
              .println("\t'send *datas*'\t:\tSend data to serial port");
          System.out
              .println("\t'read *leng*'\t:\tRead data from serial port");
          System.out
              .println("\t'scan'   / 's'\t:\tScan for serial ports");
          System.out
              .println("\t'on'     / '1'\t:\tToggle all LEDs on");
          System.out
              .println("\t'off'    / '0'\t:\tToggle all LEDs off");
          System.out
              .println("\t'print'  / 'p'\t:\tPrint 3D Translation Matrix Data");
          System.out
              .println("\t'reset'  / 'r'\t:\tReset rotation of cube");
          System.out
              .println("\t'anims'  / 'a'\t:\tPrint animation tree");
          System.out
              .println("\t'frames *anim*\t:\tPrint frame tree");
          System.out
              .println("\t'help'   / 'h'\t:\tShow this message");
          System.out
              .println("\t'quit'   / 'q'\t:\tExit Cube Control");
        }

        lastCommand = new String(s);
        System.out.print("$> ");
      }
    } while (true);
  }

  private static short[] toShortArray(String s) {
    char[] d = s.toCharArray();
    System.out.println("Length: " + d.length);
    short[] r = new short[d.length];
    for (int i = 0; i < d.length; i++) {
      r[i] = (short) d[i];
    }
    return r;
  }

  private static String shortToString(short[] d) {
    String s = "";
    for (int i = 0; i < d.length; i++) {
      s += String.valueOf((char) d[i]);
    }
    return s;
  }
  
  private Point2d convertMousePositionToWorld (int iX, int iY)
  {
    Point3d eye_pos = new Point3d();
    Point3d mousePosn = new Point3d();

    //get the eye point and mouse click point
    this.cubeCanvas.getCenterEyeInImagePlate(eye_pos);
    this.cubeCanvas.getPixelLocationInImagePlate(iX, iY, mousePosn);

    //Transform from ImagePlate coordinates to Vworld coordinates
    Transform3D motion = new Transform3D();
    this.cubeCanvas.getImagePlateToVworld(motion);

    motion.transform(eye_pos);
    motion.transform(mousePosn);

    //calculate the intersection point on Z=0
    double dblX = (-eye_pos.z / (mousePosn.z - eye_pos.z)) * (mousePosn.x - eye_pos.x) + eye_pos.x;
    double dblY = (-eye_pos.z / (mousePosn.z - eye_pos.z)) * (mousePosn.y - eye_pos.y) + eye_pos.y;
    
    return new Point2d (dblX, dblY);
  }
}
