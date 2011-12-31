/*
 * layerEditFrame.java
 *
 *
 * Copyright 2011 Thomas Buck <xythobuz@me.com>
 * Copyright 2011 Max Nuding <max.nuding@gmail.com>
 * Copyright 2011 Felix BÃ¤der <baeder.felix@gmail.com>
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
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.event.*;

/**
 * Shows a windows that allows the user to toggle the state of 64 LEDs.
 * 
 * @author Max Nuding
 * @author Thomas Buck
 * @author Felix Bäder
 * @version 1.0
 */

public class layerEditFrame extends JFrame {
	// Anfang Attribute

	private static final long serialVersionUID = 13374223L;
	JButton[][] ledPanels = new JButton[8][8];
	ImageIcon on = new ImageIcon(getClass().getResource("LEDon.png"));
	ImageIcon off = new ImageIcon(getClass().getResource("LEDoff.png"));
	byte[][] ledStatus = new byte[8][8];
	boolean changedStateSinceSave = false;
	short[] frame;
	int li;
	boolean finish = false;
	cubeWorker worker = null;
	int animI;
	int frameI;
	Frame LedFrame;

	// Ende Attribute
	/**
	 * Create a new layer editor.
	 * 
	 * @param animIndex Current animation
	 * @param frameIndex Current frame
	 * @param layerIndex Layer to edit
	 * @param work the cubeWorker containing the data
	 * @param LEDframe Used to call valueChanged, to trigger 3D View update
	 */
	public layerEditFrame(int animIndex, int frameIndex, int layerIndex,
			cubeWorker work, Frame LEDframe) {
		// Frame-Initialisierung
		super("Layer Edit");
		worker = work;
		LedFrame = LEDframe;
		animI = animIndex;
		frameI = frameIndex;
		// frame = byteToShortArray(worker.getFrame(animIndex, frameIndex));
		frame = worker.getFrame(animIndex, frameIndex);
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

		for (int i = 0; i < 8; i++) {
			for (int j = 0; j < 8; j++) {
				final int finalI = i;
				final int finalJ = j;
				ledPanels[i][j] = new JButton(on);
				ledPanels[i][j].setBounds((i * 20) + 5, (j * 20) + 5, 15, 15);
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
				if (changedStateSinceSave) {
					saveExitDialog();
				}
				dispose();
			}
		});
	}

	// Anfang Komponenten

	// Ende Komponenten
	private void loadData() {

		for (int i = 0; i < 8; i++) {
			int div = frame[(8 * (li + 1) + i) - 8];
			int[] rest = new int[8];
			int ctr = 0;
			while (div != 0) {
				rest[ctr] = div % 2;
				div = div / 2;
				ctr++;
			}

			for (int j = 0; j < 8; j++) {
				if (rest[j] == 0) {
					ledPanels[j][i].setIcon(off);
				} else {
					ledPanels[j][i].setIcon(on);
				}
				ledStatus[j][i] = (byte) rest[j];
			}

		}

	}

	/**
	 * Get the edited data back. NOTE: The worker is updated automagically!
	 * 
	 * @return Now changed 64 byte array.
	 */
	public short[] getFinalFrame() {
		if (finish == false) {
			return null;
		}
		return frame;
	}

	/**
	 * Gets called when the user clicks on a Toggle Button.
	 * 
	 * @param i X-Coordinate of Button
	 * @param j Y-Coordinate of Button
	 */
	public void btnClicked(int i, int j) {
		changedStateSinceSave = true;
		if (ledPanels[i][j].getIcon() == on) {
			ledPanels[i][j].setIcon(off);
			ledStatus[i][j] = 0;
		} else {
			ledPanels[i][j].setIcon(on);
			ledStatus[i][j] = 1;
		}

	}

	/**
	 * Action of Cancel Button. Removes this window...
	 */
	public void cancel() {
		dispose();
	}

	/**
	 * Gets called when clicking the save button. Puts data back into Worker and
	 * fires ListSelectionEvent in Worker, so that the 3D View is updated.
	 */
	public void save() {
		short[] tmpFrame = frame;
		changedStateSinceSave = false;
		short reihe = 0;
		for (int j = 0; j < 8; j++) {
			for (int i = 0; i < 8; i++) {
				reihe += ((short) Math.pow(2, i)) * ledStatus[i][j];
			}
			tmpFrame[(8 * (li + 1) + j) - 8] = reihe;
			reihe = 0;
		}
		frame = tmpFrame;
		worker.setFrame(frame, animI, frameI);
		ListSelectionEvent layerChanged = new ListSelectionEvent(
				LedFrame.frameList, LedFrame.frameList.getSelectedIndex(),
				LedFrame.frameList.getSelectedIndex(), false);
		LedFrame.valueChanged(layerChanged);
		dispose();
	}

	private int saveExitDialog() {
		String[] Optionen = { "Yes", "No" };
		int Auswahl = JOptionPane.showOptionDialog(this,
				"Do you want to save your changes?", "Save?",
				JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE, null,
				Optionen, Optionen[0]);
		if (Auswahl == JOptionPane.YES_OPTION) {
			save();
			return 1;
		} else {
			return 0;
		}
	}
}
