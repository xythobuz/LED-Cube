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
	
	public FullscreenWindow (cubeWorker cw) {
		//Basic layout stuff
		this.setUndecorated(true);
		Dimension d = Toolkit.getDefaultToolkit().getScreenSize();
		setSize(d);
		setLocation(0,0);
		cp.setLayout(null);
		setResizable(false);
		
		worker = cw;
		
		setVisible(true);
	}
}