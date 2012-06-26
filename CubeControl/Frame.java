/*
 * Frame.java
 *
 *
 * Copyright 2012 Thomas Buck <xythobuz@me.com>
 * Copyright 2012 Max Nuding <max.nuding@gmail.com>
 * Copyright 2012 Felix Bäder <baeder.felix@gmail.com>
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
import java.util.Arrays;

public class Frame extends JFrame implements ListSelectionListener, ChangeListener{
	private GraphicsConfiguration gConfig;
	private Canvas3D cubeCanvas;
	public Led3D ledView;
	private Container cp;
	private JButton editA = new JButton();
	private JButton editB = new JButton();
	private JButton editC = new JButton();
	private JButton editD = new JButton();
	private JButton editE = new JButton();
	private JButton editF = new JButton();
	private JButton editG = new JButton();
	private JButton editH = new JButton();
	private JButton[] editButtons = { editA, editB, editC, editD, editE, editF, editG, editH };
	private JButton toggleLegsButton = new JButton();
	private JButton toggleLegsButtonFullscreen = new JButton();
	private DefaultListModel frameListModel = new DefaultListModel();
	public JList frameList = new JList();
	private JScrollPane frameListScrollPane = new JScrollPane(frameList);
	private JButton frameUp = new JButton();
	private JButton frameDown = new JButton();
	private JButton frameAdd = new JButton();
	private JButton frameRemove = new JButton();
	private JButton frameRename = new JButton();
	private JList animList = new JList();
	private DefaultListModel animListModel = new DefaultListModel();
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
	public JComboBox serialPortSelector = new JComboBox();
	private JButton upload = new JButton();
	private JButton download = new JButton();
	private JLabel remainingLabel = new JLabel();
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
	private JSlider durationSlider = new JSlider(1, 256 ,1); //min, max, value
	private JLabel logoText = new JLabel();

	private int lastSelectedFrame = 0;
	private int lastSelectedAnim = 0;
	public cubeWorker worker = new cubeWorker(this);
	private boolean fileSelected = false;
	private boolean showLegs = true;
	private Frame thisFrame;
	private static Frame recentFrame;

	private void toggleLegs(){
		ledView.toggleLegs();
		if(showLegs) {
			toggleLegsButton.setText("Show legs");
			toggleLegsButtonFullscreen.setText("Show legs");
		} else {
			toggleLegsButton.setText("Hide legs");
			toggleLegsButtonFullscreen.setText("Hide legs");
		}
		showLegs = !showLegs;
	}

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
	
	/**
	 *	Ask the user to enter a string via this Frame.
	 * @param title Title of the message box
	 * @param text Text in the message box
	 * @return String user entered
	 */
	public String askString(String title, String text) {
		return JOptionPane.showInputDialog(null, text, title,
			JOptionPane.QUESTION_MESSAGE);
	}
	
	/**
	 *	Show an error message to the user via this Frame.
	 * @param s Error Message
	 */
	public void errorMessage(String s) {
		String[] Optionen = { "OK" };
		JOptionPane.showOptionDialog(this, s, "Error!", JOptionPane.YES_OPTION,
			JOptionPane.ERROR_MESSAGE, null, Optionen, Optionen[0]);
	}
	
	/**
	 *	Show an error message to the user via this Frame.
	 * @param title Title of message box
	 * @param msg Error message.
	 */
	public void errorMessage(String title, String msg) {
		String[] Optionen = { "OK" };
		JOptionPane.showOptionDialog(this, msg, title, JOptionPane.YES_OPTION,
			JOptionPane.ERROR_MESSAGE, null, Optionen, Optionen[0]);
	}

	/**
	 *	Show a dialog message to the user via this Frame.
	 * @param title Title of message box
	 * @param msg Error message.
	 */
	public void showDialog(String title, String msg) {
		String[] Optionen = { "OK" };
		JOptionPane.showOptionDialog(this, msg, title, JOptionPane.YES_OPTION,
			JOptionPane.INFORMATION_MESSAGE , null, Optionen, Optionen[0]);
	}

	/**
	 * Show an error message to the user via the most recent Frame.
	 * @param s Error Message
	 */
	public static void errorMessageStat(String s) {
		recentFrame.errorMessage(s);
	}

	/**
	 *	Show an error message to the user via the most recent Frame.
	 * @param title Title of message box
	 * @param msg Error message.
	 */
	public static void errorMessageStat(String title, String msg) {
		recentFrame.errorMessage(title, msg);
	}

	/**
	 * Toggle a LED in the current selected anim & frame
	 * @param x X Coordinate
	 * @param y Y Coord.
	 * @param z Z Coord.
	 */
	public void toggleLED(int x, int y, int z) {
		if ((animList.getSelectedIndex() != -1) && (frameList.getSelectedIndex() != -1)) {
			worker.getAnimation(animList.getSelectedIndex()).getFrame(frameList.getSelectedIndex()).toggleLED(x, y, z);
			ledView.setData(worker.getAnimation(animList.getSelectedIndex()).getFrame(frameList.getSelectedIndex()).getData());
		}
	}

	private void rebuildFrameList() {
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
	
	/**
	 * ListSelectionListener that updates Anim & Frame List
	 * and reloads the data for the 3d view
	 *
	 * @param evt List that generated the event. Has to be animList or frameList
	 */
	public void valueChanged(ListSelectionEvent evt) {
		if ((!evt.getValueIsAdjusting()) && ((evt.getSource() == animList) || (evt.getSource() == frameList))) {
			// Select an animation, if not already done
			if (animList.getSelectedIndex() == -1) {
				if ((animListModel.getSize() > lastSelectedAnim) && (lastSelectedAnim != -1)) {
					animList.setSelectedIndex(lastSelectedAnim);
				} else {
					animList.setSelectedIndex(0);
				}
			}

			// Rebuild the frame list, if possible & needed
			if ((evt.getSource() == animList) && (animList.getSelectedIndex() != -1)) {
				rebuildFrameList();
			}

			// Select a frame, if not already done
			if (frameList.getSelectedIndex() == -1) {
				if ((frameListModel.getSize() > lastSelectedFrame) && (lastSelectedFrame != -1)) {
					frameList.setSelectedIndex(lastSelectedFrame);
				} else {
					frameList.setSelectedIndex(0);
				}
				lastSelectedFrame = frameList.getSelectedIndex();
			}

			// If possible, set all data for selected frame
			if ((animList.getSelectedIndex() != -1) && (frameList.getSelectedIndex() != -1)) {
				ledView.setData(worker.getAnimation(animList.getSelectedIndex()).getFrame(frameList.getSelectedIndex()).getData());
				frameLengthText.setText(Integer.toString(worker.getAnimation(animList.getSelectedIndex()).getFrame(frameList.getSelectedIndex()).getTime()));
				durationSlider.setValue(Integer.parseInt(frameLengthText.getText()));
			}

			if (frameList.getSelectedIndex() != -1) {
				lastSelectedAnim = animList.getSelectedIndex();
			}
			if (frameList.getSelectedIndex() != -1) {
				lastSelectedFrame = frameList.getSelectedIndex();
			}
			if (lastSelectedAnim == -1) {
				lastSelectedAnim = 0;
			}
			if (lastSelectedFrame == -1) {
				lastSelectedFrame = 0;
			}
		}
	}

	public void stateChanged(ChangeEvent e){
		frameLengthText.setText(durationSlider.getValue() + "");
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

	private void showLayerEditFrame(int num) {
		if (animList.getSelectedIndex() == -1) {
			errorMessage("Please select an animation.");
		} else if (frameList.getSelectedIndex() == -1) {
			errorMessage("Please select a Frame.");
		} else {
			// Show edit frame
			layerEditFrame layerFrame1 = new layerEditFrame(animList.getSelectedIndex(), frameList.getSelectedIndex(), num, worker, thisFrame);
		}
	}

	private void playAnimation() {
		if (animList.getSelectedIndex() == -1) {
					errorMessage("Please select an animation.");
				} else if (frameList.getSelectedIndex() == -1) {
					errorMessage("Please select a Frame.");
				} else {
					for (int i = 0; i < frameList.getModel().getSize(); i++){
						frameList.setSelectedIndex(i);
						long time1 = (long) worker.getAnimation(animList.getSelectedIndex()).getFrame(frameList.getSelectedIndex()).getTime();
						long time = (long) (((time1+1) * 1000) / 24);
						try {
							Thread.sleep(time);
						} catch (Exception e) {
							System.out.println(e);
						}
				} 
		}
	}

	public Frame(String title) {
		super(title);
		thisFrame = this;
		recentFrame = this;
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		// Build serial port selection
		String[] sPorts = HelperUtility.getPorts();
		for (int i = 0; i < sPorts.length; i++) {
			serialPortSelector.addItem(sPorts[i]);
		}

		// Build Animation List
		for (int i = 0; i < worker.size(); i++) {
			animListModel.addElement(worker.getAnimation(i).getName());
		}

		// Ask user to save before closing the window
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

		// Set window size & position
		int frameWidth = 672;
		int frameHeight = 646;
		setSize(frameWidth, frameHeight);
		Dimension d = Toolkit.getDefaultToolkit().getScreenSize();
		int x = (d.width - frameWidth) / 2;
		int y = (d.height - frameHeight) / 2;
		setLocation(x, y);
		cp = getContentPane();
		cp.setLayout(null);

		// ----- 3D Stuff -----
		// --------------------
		gConfig = SimpleUniverse.getPreferredConfiguration();
		cubeCanvas = new Canvas3D(gConfig);
		cubeCanvas.setBounds(18, 31, 275, 275); // 3d view
		ledView = new Led3D(cubeCanvas, this);
		cp.add(cubeCanvas);
		// --------------------

		// Add Layer edit buttons
		for (int i = 0; i < 8; i++) {
			final String nameStart = "Layer ";
			editButtons[i].setText(nameStart + (char)('A' + i));
			editButtons[i].setBounds(299, 32 + (35 * i), 102, 29);
			cp.add(editButtons[i]);
			editButtons[i].addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent evt) {
					JButton tmp = (JButton)evt.getSource();
					String name = tmp.getText();
					name = name.substring(nameStart.length());
					// Name now is one of A - H
					char c = name.charAt(0);
					c -= 'A';
					showLayerEditFrame((int)c);
				}
			});
		}

		toggleLegsButton.setBounds(299, 312, 102, 34);
		toggleLegsButton.setText("Hide legs");
		cp.add(toggleLegsButton);
		toggleLegsButton.addActionListener(new ActionListener(){
			public void actionPerformed(ActionEvent evt){
				toggleLegs();
			}
		});

		// Add Frame List
		frameListScrollPane.setBounds(339, 379, 187, 218);
		frameList.setModel(frameListModel);
		cp.add(frameListScrollPane);
		// Add Animation List
		animScrollPane.setBounds(18, 378, 187, 219);
		animList.setModel(animListModel);
		cp.add(animScrollPane);

		// Add Move Frame Up Button
		frameUp.setBounds(532, 378, 110, 39);
		frameUp.setText("Move up");
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

		// Add Move Frame Down Button
		frameDown.setBounds(532, 558, 110, 39);
		frameDown.setText("Move down");
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

		// Add 'Frame Add' Button
		frameAdd.setBounds(532, 423, 110, 39);
		frameAdd.setText("Add");
		cp.add(frameAdd);
		frameAdd.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt) {
				if (animList.getSelectedIndex() == -1) {
					errorMessage("Please select an animation!");
				} else {
					int n = worker.getAnimation(animList.getSelectedIndex()).size();
					worker.getAnimation(animList.getSelectedIndex()).addFrame();
					frameRemaining.setText(Integer.toString(worker.memoryRemaining()));
					frameListModel.add(n, worker.getAnimation(animList.getSelectedIndex()).getFrame(n).getName());
					frameList.setModel(frameListModel);
				}
			}
		});

		// Add button for frame removal
		frameRemove.setBounds(532, 468, 110, 39);
		frameRemove.setText("Remove");
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

		// Add frame rename button
		frameRename.setBounds(532, 513, 110, 39);
		frameRename.setText("Rename");
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
				String newName = askString("Rename", "Rename " + frameList.getSelectedValue() + "?");
				if (!newName.equals("")) {
					worker.getAnimation(a).getFrame(f).setName(newName);
				}
				frameListModel.set(f, worker.getAnimation(a).getFrame(f).getName());
				frameList.setModel(frameListModel);
			}
		});

		// Add Move Animation Up Button
		animUp.setBounds(211, 378, 110, 39);
		animUp.setText("Move up");
		cp.add(animUp);
		animUp.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt) {
				int i = animList.getSelectedIndex();
				if ((i > 0) && (animListModel.getSize() >= 2)) {
					Object tmp = animListModel.get(i);
					animListModel.set(i, animListModel.get(i - 1));
					animListModel.set(i - 1, tmp);
					animList.setSelectedIndex(i - 1);
					worker.moveAnimationUp(i);
				}
			}
		});

		// Add Move Animation Down Button
		animDown.setBounds(211, 558, 110, 39);
		animDown.setText("Move down");
		cp.add(animDown);
		animDown.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt) {
				int i = animList.getSelectedIndex();
				if ((i >= 0) && (animListModel.getSize() >= 2) && (i < (animListModel.getSize() - 1))) {
					Object tmp = animListModel.get(i);
					animListModel.set(i, animListModel.get(i + 1));
					animListModel.set(i + 1, tmp);
					animList.setSelectedIndex(i + 1);
					worker.moveAnimationDown(i);
				}
			}
		});

		// Add Rename Animation Button
		animRename.setBounds(211, 513, 110, 39);
		animRename.setText("Rename");
		cp.add(animRename);
		animRename.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt) {
				int a = animList.getSelectedIndex();
				if (a < 0) {
					errorMessage("Select an animation!");
					return;
				}
				String newName = askString("Rename", "Rename " + animList.getSelectedValue() + "?");
				if (!newName.equals("")) {
					worker.getAnimation(a).setName(newName);
				}
				animListModel.set(a, worker.getAnimation(a).getName());
				animList.setModel(animListModel);
			}
		});

		// Add button for adding animations
		animAdd.setBounds(211, 423, 110, 39);
		animAdd.setText("Add");
		cp.add(animAdd);
		animAdd.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt) {
				if (worker.addAnimation() == -1) {
					errorMessage("Could not add animation!");
				} else {
					animListModel.clear();
					for (int i = 0; i < worker.size(); i++) {
						animListModel.add(i, worker.getAnimation(i).getName());
					}
					animList.setModel(animListModel);
				}
			}
		});

		// Add Animation remove button
		animRemove.setBounds(211, 468, 110, 39);
		animRemove.setText("Remove");
		cp.add(animRemove);
		animRemove.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt) {
				if (animList.getSelectedIndex() == -1) {
					errorMessage("Select an animation.");
				} else {
					worker.removeAnimation(animList.getSelectedIndex());
					animListModel.removeElementAt(animList.getSelectedIndex());
					animList.setModel(animListModel);
				}
			}
		});

			
		fullScreenButton.setText("Fullscreen");
		fullScreenButton.setBounds(18, 312, 134, 35);
		cp.add(fullScreenButton);
		fullScreenButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt) {
				ledView.enterFullscreen();
				dispose();
				setUndecorated(true);
				setVisible(true);
				setLocation(0,0);
				setSize(700, 700);
				int w = Toolkit.getDefaultToolkit().getScreenSize().width;
				int h = Toolkit.getDefaultToolkit().getScreenSize().height;
				setSize(w - 0, h - 0);
				playAnimationFullscreen.setVisible(true);
				toggleLegsButtonFullscreen.setVisible(true);
				cubeCanvas.setBounds(0, 0, w - 0, h - 35);
			}
		});
	
		exitButton = new JButton("Exit Fullscreen");
		exitButton.setBounds(Toolkit.getDefaultToolkit().getScreenSize().width-150, Toolkit.getDefaultToolkit().getScreenSize().height-30, 150, 25);
		cp.add(exitButton);
		exitButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt) {
				dispose();
				setUndecorated(false);
				setVisible(true);
				playAnimationFullscreen.setVisible(false);
				toggleLegsButtonFullscreen.setVisible(false);
				setLocation(0,0);
				setSize(672, 656);
				ledView.leaveFullscreen();
				cubeCanvas.setBounds(18, 31, 275, 275);
				Dimension d = Toolkit.getDefaultToolkit().getScreenSize();
				int x = (d.width - getSize().width) / 2;
				int y = (d.height - getSize().height) / 2;
				setLocation(x, y);
			}
		});
	
		playAnimation.setText("Play");
		playAnimation.setBounds(159, 312, 134, 35);
		cp.add(playAnimation);
		playAnimation.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt){
				playAnimation();
			}
		});
	
		playAnimationFullscreen.setText("Play");
		playAnimationFullscreen.setBounds(Toolkit.getDefaultToolkit().getScreenSize().width-310, Toolkit.getDefaultToolkit().getScreenSize().height-30, 150, 25);
		playAnimationFullscreen.setVisible(false);
		cp.add(playAnimationFullscreen);
		playAnimationFullscreen.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt){
				playAnimation();
			}
		});

		toggleLegsButtonFullscreen.setBounds(Toolkit.getDefaultToolkit().getScreenSize().width-470, Toolkit.getDefaultToolkit().getScreenSize().height-30, 150, 25);
		toggleLegsButtonFullscreen.setText("Hide legs");
		toggleLegsButtonFullscreen.setVisible(false);
		cp.add(toggleLegsButtonFullscreen);
		toggleLegsButtonFullscreen.addActionListener(new ActionListener(){
			public void actionPerformed(ActionEvent evt){
				toggleLegs();
			}
		});

	
	
		frameDuration.setBounds(462, 129, 65, 20);
		frameDuration.setText("Save");
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
					durationSlider.setValue(Integer.parseInt(frameLengthText.getText()));
					worker.getAnimation(animList.getSelectedIndex()).getFrame(frameList.getSelectedIndex()).setTime((short)(Integer.parseInt(frameLengthText.getText())));
				}
			}
		});
	
		animPath.setBounds(417, 281, 228, 20);
		animPath.setEditable(false);
		animPath.setText("Select an animation file...");
		cp.add(animPath);
		
		load.setBounds(417, 307, 72, 39);
		load.setText("Load");
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
					animListModel.clear();
					for (int i = 0; i < worker.size(); i++) {
						animListModel.addElement(worker.getAnimation(i).getName());
					}
					animList.setModel(animListModel);
					animList.setSelectedIndex(0);
					rebuildFrameList();
				}
			}
		});
	
		save.setBounds(491, 307, 72, 39);
		save.setText("Save");
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
	
		saveAs.setBounds(565, 307, 82, 39);
		saveAs.setText("Save As");
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

		serialPortSelector.setBounds(417, 182, 228, 25);
		cp.add(serialPortSelector);

		upload.setBounds(417, 212, 111, 39);
		upload.setText("Upload");
		cp.add(upload);
		upload.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt) {
				// Error messages are generated by worker
				if (worker.cubeProbeConnected((String) serialPortSelector.getSelectedItem())) {
					if (worker.cubeSendState((String) serialPortSelector.getSelectedItem()) != -1) {
						showDialog("Success!", "Data was sent successfuly!");
					}
				}
			}
		});
	
		download.setBounds(534, 212, 111, 39);
		download.setText("Download");
		cp.add(download);
		download.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt) {
				// Error messages are generated by worker
				if (worker.cubeProbeConnected((String) serialPortSelector.getSelectedItem())) {
					if (worker.cubeGetState((String) serialPortSelector.getSelectedItem()) != -1) {
						showDialog("Success!", "Got data successfuly!");
					}
				}
			}
		});
	
		frameLengthLabel.setBounds(420, 97, 130, 13);
		frameLengthLabel.setText("Time (1/24 sec)");
		cp.add(frameLengthLabel);
	
		frameLengthText.setBounds(419, 129, 40, 20);
		cp.add(frameLengthText);

		remainingLabel.setBounds(530, 113, 90, 13);
		remainingLabel.setText("Remaining:");
		cp.add(remainingLabel);

		durationSlider.setBounds(417, 108, 115, 23);
		durationSlider.addChangeListener(this);
		cp.add(durationSlider);
		
		frameRemaining.setBounds(530, 129, 49, 20);
		frameRemaining.setEditable(false);
		frameRemaining.setText(String.valueOf(worker.memoryRemaining()));
		cp.add(frameRemaining);
	
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
		filePanel.setBorder(BorderFactory.createTitledBorder("Animation File"));
		cp.add(filePanel);
	
		serialPanel.setBounds(409, 160, 243, 99);
		serialPanel.setBorder(BorderFactory.createTitledBorder("Serial communication"));
		cp.add(serialPanel);
	
		settingsPanel.setBounds(409, 75, 243, 82);
		settingsPanel.setBorder(BorderFactory.createTitledBorder("Frame duration"));
		cp.add(settingsPanel);

		logoText.setText("CubeControl");
		logoText.setBounds(415, 10, 243, 65);
		logoText.setFont(new Font("Default", Font.BOLD, 38));
		cp.add(logoText);

		// Ende Komponenten
		animList.addListSelectionListener(this);
		frameList.addListSelectionListener(this);
		setResizable(false);
		setVisible(true);

		valueChanged(new ListSelectionEvent(animList, 0, 0, false));
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

				if (s.equals("r") || s.equals("reset"))
					l.resetView();

				if (s.equals("l"))
					f.toggleLegs();
		
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
		
				if (s.startsWith("port ")) {
					f.serialPortSelector.addItem(s.substring(5));
					f.serialPortSelector.setSelectedItem(s.substring(5));
				}
		
				if (s.startsWith("send ")) {
					HelperUtility.openPort((String) f.serialPortSelector.getSelectedItem());
					short[] dat = toShortArray(s.substring(5));
					HelperUtility.writeData(dat, dat.length);
					HelperUtility.closePort();
				}
		
				if (s.startsWith("read ")) {
					int leng = Integer.parseInt(s.substring(5));
					HelperUtility.openPort((String) f.serialPortSelector.getSelectedItem());
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
					 f.serialPortSelector.removeAllItems();
					 for (int i = 0; i < sPorts.length; i++) {
						System.out.println("Port " + i + ": " + sPorts[i]);
						f.serialPortSelector.addItem(sPorts[i]);
					}
				}
				
		
				if (s.equals("h") || (s.equals("help"))) {
					System.out.println("Commands:");
					System.out.println("\t'port *name*'\t:\tSet serial port to this");
					System.out.println("\t'send *datas*'\t:\tSend data to serial port");
					System.out.println("\t'read *leng*'\t:\tRead data from serial port");
					System.out.println("\t'scan' / 's'\t:\tScan for serial ports");
					System.out.println("\t'on' / '1'\t:\tToggle all LEDs on");
					System.out.println("\t'off'/ '0'\t:\tToggle all LEDs off");
					System.out.println("\t'print'/ 'p'\t:\tPrint 3D Translation Matrix Data");
					System.out.println("\t'reset'/ 'r'\t:\tReset rotation of cube");
					System.out.println("\t'anims'/ 'a'\t:\tPrint animation tree");
					System.out.println("\t'frames *anim*\t:\tPrint frame tree");
					System.out.println("\t'help' / 'h'\t:\tShow this message");
					System.out.println("\t'quit' / 'q'\t:\tExit Cube Control");
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
}
