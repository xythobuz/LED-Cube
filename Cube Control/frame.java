import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

/**
  *
  * Beschreibung
  *
  * @version 1.0 vom 14.11.2011
  * @author
  */

public class frame extends JFrame {
  // Anfang Variablen
  private Canvas cubeCanvas = new Canvas();
  private JButton editA = new JButton();
  private JButton editB = new JButton();
  private JButton editC = new JButton();
  private JButton editD = new JButton();
  private JButton editE = new JButton();
  private JButton editF = new JButton();
  private JButton editG = new JButton();
  private JButton editH = new JButton();
  private DefaultListModel frameListModel = new DefaultListModel();
  private JList frameList = new JList(frameListModel);
  private JButton frameUp = new JButton();
  private JButton frameDown = new JButton();
  private JButton frameAdd = new JButton();
  private JButton frameRemove = new JButton();
  private DefaultListModel animationListModel = new DefaultListModel();
  private JList jList2 = new JList(animationListModel);
  private JButton animUp = new JButton();
  private JButton animDown = new JButton();
  private JButton animAdd = new JButton();
  private JButton animRemove = new JButton();
  private JTextField animPath = new JTextField();
  private JButton load = new JButton();
  private JButton save = new JButton();
  private String[] jComboBox1Daten = {"Select serial port..."};
  private JComboBox jComboBox1 = new JComboBox(jComboBox1Daten);
  private JButton upload = new JButton();
  private JButton download = new JButton();
  private JLabel jLabel4 = new JLabel();
  private JTextField frameRemaining = new JTextField();
  
  private cubeWorker worker = new cubeWorker();
  // Ende Variablen

  private int saveExitDialog() {
    String[] Optionen = {"Yes", "No"};
    int Auswahl = JOptionPane.showOptionDialog(this, "Save?", "Yes/No", JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE, null, Optionen, Optionen[0]);
    if (Auswahl == JOptionPane.YES_OPTION) {
       worker.saveState(animPath.getText());
       return 1;
    } else {
       return 0;
    }
  }

  public frame(String title) {
    // Frame-Initialisierung
    super(title);

    frameListModel.add(0, "Frame 1");
    frameListModel.add(1, "Frame 2");
    frameListModel.add(2, "Frame 3");
    animationListModel.add(0, "Animation 1");
    animationListModel.add(1, "Animation 2");
    animationListModel.add(2, "Animation 3");

    addWindowListener(new WindowAdapter() {
      public void windowClosing(WindowEvent evt) {
             if (worker.changedStateSinceSave()) {
                  saveExitDialog();
             }
             System.exit(0);
      }
    });
    int frameWidth = 662;
    int frameHeight = 416;
    setSize(frameWidth, frameHeight);
    Dimension d = Toolkit.getDefaultToolkit().getScreenSize();
    int x = (d.width - getSize().width) / 2;
    int y = (d.height - getSize().height) / 2 ;
    setLocation(x, y);
    Container cp = getContentPane();
    cp.setLayout(null);
    // Anfang Komponenten

    cubeCanvas.setBounds(8, 8, 250, 250);
    cubeCanvas.setBackground(Color.GRAY);
    cp.add(cubeCanvas);
    editA.setBounds(264, 8, 107, 25);
    editA.setText("Layer A");
    cp.add(editA);
    editA.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        editAActionPerformed(evt);
      }
    });

    editB.setBounds(264, 40, 107, 25);
    editB.setText("Layer B");
    cp.add(editB);
    editB.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        editBActionPerformed(evt);
      }
    });

    editC.setBounds(264, 72, 107, 25);
    editC.setText("Layer C");
    cp.add(editC);
    editC.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        editCActionPerformed(evt);
      }
    });

    editD.setBounds(264, 104, 107, 25);
    editD.setText("Layer D");
    cp.add(editD);
    editD.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        editDActionPerformed(evt);
      }
    });

    editE.setBounds(264, 136, 107, 25);
    editE.setText("Layer E");
    cp.add(editE);
    editE.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        editEActionPerformed(evt);
      }
    });

    editF.setBounds(264, 168, 107, 25);
    editF.setText("Layer F");
    cp.add(editF);
    editF.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        editFActionPerformed(evt);
      }
    });

    editG.setBounds(264, 200, 107, 25);
    editG.setText("Layer G");
    cp.add(editG);
    editG.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        editGActionPerformed(evt);
      }
    });

    editH.setBounds(264, 232, 107, 25);
    editH.setText("Layer H");
    cp.add(editH);
    editH.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        editHActionPerformed(evt);
      }
    });

    frameList.setBounds(384, 8, 145, 249);
    cp.add(frameList);
    frameUp.setBounds(544, 8, 107, 33);
    frameUp.setText("Move up");
    cp.add(frameUp);
    frameUp.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        frameUpActionPerformed(evt);
      }
    });

    frameDown.setBounds(544, 152, 107, 33);
    frameDown.setText("Move down");
    cp.add(frameDown);
    frameDown.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        frameDownActionPerformed(evt);
      }
    });

    frameAdd.setBounds(544, 56, 107, 33);
    frameAdd.setText("Add");
    cp.add(frameAdd);
    frameAdd.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        frameAddActionPerformed(evt);
      }
    });

    frameRemove.setBounds(544, 104, 107, 33);
    frameRemove.setText("Remove");
    cp.add(frameRemove);
    frameRemove.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        frameRemoveActionPerformed(evt);
      }
    });

    jList2.setBounds(8, 264, 209, 121);
    cp.add(jList2);
    animUp.setBounds(224, 264, 99, 25);
    animUp.setText("Move up");
    cp.add(animUp);
    animUp.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        animUpActionPerformed(evt);
      }
    });

    animDown.setBounds(224, 360, 99, 25);
    animDown.setText("Move down");
    cp.add(animDown);
    animDown.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        animDownActionPerformed(evt);
      }
    });

    animAdd.setBounds(224, 296, 99, 25);
    animAdd.setText("Add");
    cp.add(animAdd);
    animAdd.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        animAddActionPerformed(evt);
      }
    });

    animRemove.setBounds(224, 328, 99, 25);
    animRemove.setText("Remove");
    cp.add(animRemove);
    animRemove.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        animRemoveActionPerformed(evt);
      }
    });

    animPath.setBounds(344, 264, 305, 24);
    animPath.setEditable(false);
    animPath.setText("Load/Save an animation file...");
    cp.add(animPath);
    load.setBounds(344, 296, 147, 25);
    load.setText("Load");
    cp.add(load);
    load.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        loadActionPerformed(evt);
      }
    });

    save.setBounds(504, 296, 147, 25);
    save.setText("Save");
    cp.add(save);
    save.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        saveActionPerformed(evt);
      }
    });

    jComboBox1.setBounds(344, 328, 305, 24);
    cp.add(jComboBox1);
    upload.setBounds(344, 360, 147, 25);
    upload.setText("Upload");
    cp.add(upload);
    upload.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        uploadActionPerformed(evt);
      }
    });

    download.setBounds(504, 360, 147, 25);
    download.setText("Download");
    cp.add(download);
    download.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        downloadActionPerformed(evt);
      }
    });

    jLabel4.setBounds(536, 208, 111, 16);
    jLabel4.setText("Frames remaining:");
    jLabel4.setFont(new Font("MS Sans Serif", Font.PLAIN, 13));
    cp.add(jLabel4);
    frameRemaining.setBounds(536, 232, 113, 24);
    frameRemaining.setEditable(false);
    frameRemaining.setText("2048");
    cp.add(frameRemaining);
    // Ende Komponenten

    setResizable(false);
    setVisible(true);
  }

  // Anfang Ereignisprozeduren
  public void editAActionPerformed(ActionEvent evt) {

  }

  public void editBActionPerformed(ActionEvent evt) {

  }

  public void editCActionPerformed(ActionEvent evt) {

  }

  public void editDActionPerformed(ActionEvent evt) {

  }

  public void editEActionPerformed(ActionEvent evt) {

  }

  public void editFActionPerformed(ActionEvent evt) {

  }

  public void editGActionPerformed(ActionEvent evt) {

  }

  public void editHActionPerformed(ActionEvent evt) {

  }

  public void frameUpActionPerformed(ActionEvent evt) {
         int i = frameList.getSelectedIndex();
         if ((i > 0) && (frameListModel.getSize() >= 2)) {
            Object tmp = frameListModel.get(i);
            frameListModel.set(i, frameListModel.get(i - 1));
            frameListModel.set(i - 1, tmp);
            frameList.setSelectedIndex(i - 1);
         }
  }

  public void frameDownActionPerformed(ActionEvent evt) {
         int i = frameList.getSelectedIndex();
         if ((i >= 0) && (frameListModel.getSize() >= 2) && (i < (frameListModel.getSize() - 1))) {
            Object tmp = frameListModel.get(i);
            frameListModel.set(i, frameListModel.get(i + 1));
            frameListModel.set(i + 1, tmp);
            frameList.setSelectedIndex(i + 1);
         }
  }

  public void frameAddActionPerformed(ActionEvent evt) {

  }

  public void frameRemoveActionPerformed(ActionEvent evt) {

  }

  public void animUpActionPerformed(ActionEvent evt) {
         int i = jList2.getSelectedIndex();
         if ((i > 0) && (animationListModel.getSize() >= 2)) {
            Object tmp = animationListModel.get(i);
            animationListModel.set(i, animationListModel.get(i - 1));
            animationListModel.set(i - 1, tmp);
            jList2.setSelectedIndex(i - 1);
         }
  }

  public void animDownActionPerformed(ActionEvent evt) {
         int i = jList2.getSelectedIndex();
         if ((i >= 0) && (animationListModel.getSize() >= 2) && (i < (animationListModel.getSize() - 1))) {
            Object tmp = animationListModel.get(i);
            animationListModel.set(i, animationListModel.get(i + 1));
            animationListModel.set(i + 1, tmp);
            jList2.setSelectedIndex(i + 1);
         }
  }

  public void animAddActionPerformed(ActionEvent evt) {

  }

  public void animRemoveActionPerformed(ActionEvent evt) {

  }

  public void loadActionPerformed(ActionEvent evt) {

  }

  public void saveActionPerformed(ActionEvent evt) {

  }


  public void uploadActionPerformed(ActionEvent evt) {
         if (jComboBox1.getSelectedItem().equals("Select serial port...")) {
            JOptionPane.showMessageDialog(this, "No serial port selected...");
         } else {
           worker.uploadState((String)jComboBox1.getSelectedItem());
         }
  }

  public void downloadActionPerformed(ActionEvent evt) {
         if (jComboBox1.getSelectedItem().equals("Select serial port...")) {
            JOptionPane.showMessageDialog(this, "No serial port selected...");
         } else {
           worker.downloadState((String)jComboBox1.getSelectedItem());
         }
  }

  // Ende Ereignisprozeduren

  public static void main(String[] args) {
    new frame("Cube Control");
  }
}

