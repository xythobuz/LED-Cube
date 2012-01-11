import com.sun.j3d.utils.universe.*;
import javax.media.j3d.*;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.event.*;
import java.io.File;

public class FullscreenWindow extends JFrame {
	private Container cp = getContentPane();
	private cubeWorker worker;
	private JButton exitButton;
	private int width;
	private int height;
	
	public FullscreenWindow (cubeWorker cw) {
		//Basic layout stuff
		this.setUndecorated(true);
		Dimension d = Toolkit.getDefaultToolkit().getScreenSize();
		setSize(d);
		setLocation(0,0);
		cp.setLayout(null);
		setResizable(false);
		
		worker = cw;
		width = d.width;
		height = d.height;
		exitButton = new JButton("Exit Fullscreen");
		exitButton.setBounds(width-150, height-25, 150, 25);
		exitButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt) {
				dispose();
			}
		});
		cp.add(exitButton);
		
		setVisible(true);
	}
}