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
	private Canvas3D canvas;
	private Led3D led;
	private int width;
	private int height;
	
	public FullscreenWindow (cubeWorker cw, Canvas3D cv, Led3D ledview) {
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
		canvas = cv;
		led = ledview;
		exitButton = new JButton("Exit Fullscreen");
		exitButton.setBounds(width-150, height-25, 150, 25);
		exitButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt) {
				dispose();
				led.leaveFullscreen();
			}
		});
		
		canvas.setBounds(0,0, width, height-50);

		
		cp.add(exitButton);
		cp.add(canvas);
		
		setVisible(true);
	}

}