import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.event.*;

/**
  *
  * Beschreibung
  *
  * @version 1.0 vom 11/16/2011
  * @author
  */

public class layerEditFrame extends JFrame {
  // Anfang Attribute
  private JPanel panelLED1 = new JPanel(null, true);
  JButton[][] ledPanels = new JButton[8][8];
  ImageIcon on = new ImageIcon(getClass().getResource("LEDon.png"));
  ImageIcon off = new ImageIcon(getClass().getResource("LEDoff.png"));
  byte[][] ledStatus = new byte[8][8];
  boolean changedStateSinceSave = false;
  byte[] frame;
  int li;

  // Ende Attribute

  public layerEditFrame(byte[] f, int layerIndex) {
    // Frame-Initialisierung
    super("Layer Edit");
    frame = f;
    li = layerIndex;
    setDefaultCloseOperation(WindowConstants.DISPOSE_ON_CLOSE);
    int frameWidth = 180;
    int frameHeight = 230;
    setSize(frameWidth, frameHeight);
    Dimension d = Toolkit.getDefaultToolkit().getScreenSize();
    int x = (d.width - getSize().width) / 2;
    int y = (d.height - getSize().height) / 2;
    setLocation(x, y);
    setResizable(false);
    Container cp = getContentPane();
    cp.setLayout(null);

    for(int i = 0; i < 8; i++){
      for(int j = 0; j < 8; j++){
         final int finalI = i;
         final int finalJ = j;
         ledPanels[i][j] = new JButton(on);
         ledPanels[i][j].setBounds((i*20)+5, (j*20)+5, 15, 15);
         ledPanels[i][j].addActionListener(new ActionListener() {
           public void actionPerformed(ActionEvent evt) {
             btnClicked(finalI, finalJ);
           }
         });
         ledPanels[i][j].setVisible(true);
         cp.add(ledPanels[i][j]);
      }
    }
    loadData();
    JButton saveBtn = new JButton("Save");
    JButton cancelBtn = new JButton("Cancel");
    
    saveBtn.setBounds(5, 170, 70, 25);
    saveBtn.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(saveBtn);
    cancelBtn.setBounds(80, 170, 80, 25);
    cancelBtn.setFont(new Font("Dialog", Font.PLAIN, 13));
    cp.add(cancelBtn);
    setVisible(true);
    

    
    saveBtn.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        save();
      }
    });

    cancelBtn.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent evt) {
        cancel();
      }
    });

    
    addWindowListener(new WindowAdapter() {
      public void windowClosing(WindowEvent evt) {
             if(changedStateSinceSave){
                saveExitDialog();
             }
             dispose();
      }
    });
  }
    // Anfang Komponenten

    // Ende Komponenten
  private void loadData(){

    for(int i = 0; i < 8; i++){
      int div = frame[li + i];
      int[] rest = new int[8];
      int ctr = 0;
      while(div != 0){
        rest[ctr] = div%2;
        div = div/2;
        ctr++;
      }

      for(int j = 0; j < 8; j++){
        if(rest[j] == 0){
         ledPanels[li + j][i].setIcon(off);
        } else {
         ledPanels[li + j][i].setIcon(on);
        }
        ledStatus[li + j][i] = (byte) rest[j];
      }

    }

  }

   byte[] getFinalFrame(){
      return frame;
   }

  public void btnClicked(int i, int j){
    changedStateSinceSave = true;
    if (ledPanels[i][j].getIcon() == on){
      ledPanels[i][j].setIcon(off);
       ledStatus[i][j] = 0;
    } else {
      ledPanels[i][j].setIcon(on);
       ledStatus[i][j] = 1;
    }

  }

  public void cancel(){
    dispose();
  }

  
  public void save(){
    int ctr = 0;
    byte[] tmpFrame = new byte[64];
    changedStateSinceSave = false;
    int reihe = 0;
    for(int j = 0; j < 8; j++){
      for(int i = 0; i < 8; i++){
        reihe += ((int) Math.pow(2, i)) * ledStatus[i][j];
        System.out.println("LED-Status: " + ledStatus[i][j]);
        System.out.println("Reihe: " + i);
        System.out.println("Spalte: " + j);
        System.out.println("Wertigkeit: " + ((int) Math.pow(2, i)));
        System.out.println("Zusammen: " + ((int) Math.pow(2, j)) * ledStatus[i][j]);
        System.out.println("Reihe nacher: " + reihe);
        System.out.println();
        ctr++;
      }
      tmpFrame[j] = (byte)reihe;
      reihe = 0;
      System.out.println("----");
      System.out.println("Frame-Array, Position " + j + " = " + tmpFrame[j]);
      System.out.println("----");
    }
      frame = tmpFrame;


  }

  private int saveExitDialog() {
    String[] Optionen = {"Yes", "No"};
    int Auswahl = JOptionPane.showOptionDialog(this, "Do you want to save your changes?", "Save?", JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE, null, Optionen, Optionen[0]);
    if (Auswahl == JOptionPane.YES_OPTION) {
       save();
       return 1;
    } else {
       return 0;
    }
  }
}
