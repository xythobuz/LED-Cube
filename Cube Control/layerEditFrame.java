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

  // Ende Attribute

  public layerEditFrame() {
    // Frame-Initialisierung
    super("Layer Edit");
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
         ledPanels[i][j] = new JButton();
         ledPanels[i][j].setBackground(Color.RED);
         ledPanels[i][j].setBounds((i*20)+5, (j*20)+5, 15, 15);
         ledPanels[i][j].setVisible(true);
         cp.add(ledPanels[i][j]);
      }
    }
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

             saveExitDialog();
             dispose();
      }
    });
  }
    // Anfang Komponenten

    // Ende Komponenten
  /*public void btnClicked(){
    if (getIcon() == on){
      setIcon(off);
    } else {
      setIcon(on);
    }
  } */

  public void cancel(){
    dispose();
  }

  
  public void save(){

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