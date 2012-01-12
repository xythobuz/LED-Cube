/*
 * FullscreenWindow.java
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
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with LED-Cube. If not, see <http://www.gnu.org/licenses/>.
 */

/**
 * This class is responsible for displaying the 3D View of our Cube in fullscreen mode.
 * 
 * @author Thomas Buck
 * @author Max Nuding
 * @author Felix Bäder
 * @version 1.0
 */


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
		
		canvas.setBounds(0,0, width, height-30);

		
		cp.add(exitButton);
		cp.add(canvas);
		
		setVisible(true);
	}

}