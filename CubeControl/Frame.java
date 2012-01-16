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
	// Ende Attribute

	public cubeWorker worker = new cubeWorker();
	private boolean fileSelected = false;

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

	private String askString(String title, String text) {
		return JOptionPane.showInputDialog(null, text, title,
				JOptionPane.QUESTION_MESSAGE);
	}

	private void errorMessage(String s) {
		String[] Optionen = { "OK" };
		JOptionPane.showOptionDialog(this, s, "Error!", JOptionPane.YES_OPTION,
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
				for (int i = 0; i < worker.numOfFrames(animList
						.getSelectedIndex()); i++) {
					frameListModel.addElement(worker.getFrameName(
							animList.getSelectedIndex(), i));
				}
				frameList.setModel(frameListModel);
			}

			// If both selections are valid, update Frame duration and set 3D
			// data
			if ((animList.getSelectedIndex() != -1)
					&& (frameList.getSelectedIndex() != -1)) {
				ledView.setData(worker.getFrame(animList.getSelectedIndex(),
						frameList.getSelectedIndex()));
				frameLengthText.setText(Integer.toString(worker.getFrameTime(
						animList.getSelectedIndex(),
						frameList.getSelectedIndex())));
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
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		String[] sPorts = worker.getSerialPorts();
		for (int i = 0; i < sPorts.length; i++) {
			jComboBox1.addItem(sPorts[i]);
		}

		for (int i = 0; i < worker.numOfAnimations(); i++) {
			animModel.addElement(worker.getAnimationName(i));
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
		int frameWidth = 661;
		int frameHeight = 440;
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
		cubeCanvas.setBounds(8, 8, 250, 250);
		cp.add(cubeCanvas);

		// -------------

		editA.setBounds(264, 8, 107, 25);
		editA.setText("Layer A");
		editA.setFont(new Font("Dialog", Font.PLAIN, 13));
		cp.add(editA);
		editA.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt) {
				editA_ActionPerformed(evt);
			}
		});

		editB.setBounds(264, 40, 107, 25);
		editB.setText("Layer B");
		editB.setFont(new Font("Dialog", Font.PLAIN, 13));
		cp.add(editB);
		editB.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt) {
				editB_ActionPerformed(evt);
			}
		});

		editC.setBounds(264, 72, 107, 25);
		editC.setText("Layer C");
		editC.setFont(new Font("Dialog", Font.PLAIN, 13));
		cp.add(editC);
		editC.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt) {
				editC_ActionPerformed(evt);
			}
		});

		editD.setBounds(264, 104, 107, 25);
		editD.setText("Layer D");
		editD.setFont(new Font("Dialog", Font.PLAIN, 13));
		cp.add(editD);
		editD.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt) {
				editD_ActionPerformed(evt);
			}
		});

		editE.setBounds(264, 136, 107, 25);
		editE.setText("Layer E");
		editE.setFont(new Font("Dialog", Font.PLAIN, 13));
		cp.add(editE);
		editE.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt) {
				editE_ActionPerformed(evt);
			}
		});

		editF.setBounds(264, 168, 107, 25);
		editF.setText("Layer F");
		editF.setFont(new Font("Dialog", Font.PLAIN, 13));
		cp.add(editF);
		editF.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt) {
				editF_ActionPerformed(evt);
			}
		});

		editG.setBounds(264, 200, 107, 25);
		editG.setText("Layer G");
		editG.setFont(new Font("Dialog", Font.PLAIN, 13));
		cp.add(editG);
		editG.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt) {
				editG_ActionPerformed(evt);
			}
		});

		editH.setBounds(264, 232, 107, 25);
		editH.setText("Layer H");
		editH.setFont(new Font("Dialog", Font.PLAIN, 13));
		cp.add(editH);
		editH.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt) {
				editH_ActionPerformed(evt);
			}
		});

		frameListScrollPane.setBounds(384, 8, 145, 249);
		frameList.setModel(frameListModel);
		cp.add(frameListScrollPane);

		frameUp.setBounds(544, 8, 107, 28);
		frameUp.setText("Move up");
		frameUp.setFont(new Font("Dialog", Font.PLAIN, 13));
		cp.add(frameUp);
		frameUp.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt) {
				frameUp_ActionPerformed(evt);
			}
		});

		frameAdd.setBounds(544, 39, 107, 28);
		frameAdd.setText("Add");
		frameAdd.setFont(new Font("Dialog", Font.PLAIN, 13));
		cp.add(frameAdd);
		frameAdd.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt) {
				frameAdd_ActionPerformed(evt);
			}
		});

		frameRemove.setBounds(544, 70, 107, 28);
		frameRemove.setText("Remove");
		frameRemove.setFont(new Font("Dialog", Font.PLAIN, 13));
		cp.add(frameRemove);
		frameRemove.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt) {
				frameRemove_ActionPerformed(evt);
			}
		});

		frameRename.setBounds(544, 101, 107, 28);
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
				worker.setFrameName(
						askString("Rename",
								"Rename " + frameList.getSelectedValue() + "?"),
						a, f);
				frameListModel.set(f, worker.getFrameName(a, f));
				frameList.setModel(frameListModel);
			}
		});

		frameDown.setBounds(544, 132, 107, 28);
		frameDown.setText("Move down");
		frameDown.setFont(new Font("Dialog", Font.PLAIN, 13));
		cp.add(frameDown);
		frameDown.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt) {
				frameDown_ActionPerformed(evt);
			}
		});

		frameLengthLabel.setBounds(536, 160, 113, 24);
		frameLengthLabel.setText("Time (1/24 sec)");
		frameLengthLabel.setFont(new Font("Dialog", Font.PLAIN, 13));
		cp.add(frameLengthLabel);

		frameLengthText.setBounds(536, 184, 50, 24);
		frameLengthText.setText("");
		frameLengthText.setFont(new Font("Dialog", Font.PLAIN, 13));
		cp.add(frameLengthText);
		
		fullScreenButton.setText("Fullscreen");
		fullScreenButton.setBounds(504, 390, 147, 25);
		fullScreenButton.setFont(new Font("Dialog", Font.PLAIN, 13));
		cp.add(fullScreenButton);
		fullScreenButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt) {
				enterFullscreen(evt);
			}
		});

		frameDuration.setBounds(590, 184, 60, 24);
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
					worker.setFrameTime(
							(byte) (Integer.parseInt(frameLengthText.getText()) - 1),
							animList.getSelectedIndex(),
							frameList.getSelectedIndex());
				}
			}
		});
        

		animScrollPane.setBounds(8, 264, 209, 121);
		animList.setModel(animModel);
		cp.add(animScrollPane);

		animUp.setBounds(224, 264, 99, 25);
		animUp.setText("Move up");
		animUp.setFont(new Font("Dialog", Font.PLAIN, 13));
		cp.add(animUp);
		animUp.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt) {
				animUp_ActionPerformed(evt);
			}
		});

		animDown.setBounds(224, 368, 99, 25);
		animDown.setText("Move down");
		animDown.setFont(new Font("Dialog", Font.PLAIN, 13));
		cp.add(animDown);
		animDown.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt) {
				animDown_ActionPerformed(evt);
			}
		});

		animRename.setBounds(224, 342, 99, 25);
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
				worker.setAnimationName(
						askString("Rename",
								"Rename " + animList.getSelectedValue() + "?"),
						a);
				animModel.set(a, worker.getAnimationName(a));
				animList.setModel(animModel);
			}
		});

		animAdd.setBounds(224, 290, 99, 25);
		animAdd.setText("Add");
		animAdd.setFont(new Font("Dialog", Font.PLAIN, 13));
		cp.add(animAdd);
		animAdd.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt) {
				animAdd_ActionPerformed(evt);
			}
		});

		animRemove.setBounds(224, 316, 99, 25);
		animRemove.setText("Remove");
		animRemove.setFont(new Font("Dialog", Font.PLAIN, 13));
		cp.add(animRemove);
		animRemove.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt) {
				animRemove_ActionPerformed(evt);
			}
		});

		animPath.setBounds(344, 264, 305, 24);
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
				load_ActionPerformed(evt);
			}
		});

		save.setBounds(454, 296, 100, 25);
		save.setText("Save");
		save.setFont(new Font("Dialog", Font.PLAIN, 13));
		cp.add(save);
		save.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt) {
				save_ActionPerformed(evt);
			}
		});

		saveAs.setBounds(564, 296, 90, 25);
		saveAs.setText("Save As");
		saveAs.setFont(new Font("Dialog", Font.PLAIN, 13));
		cp.add(saveAs);
		saveAs.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt) {
				saveAs_ActionPerformed(evt);
			}
		});

		jComboBox1.setBounds(344, 328, 305, 24);
		jComboBox1.setFont(new Font("Dialog", Font.PLAIN, 13));
		cp.add(jComboBox1);
		upload.setBounds(344, 360, 147, 25);
		upload.setText("Upload");
		upload.setFont(new Font("Dialog", Font.PLAIN, 13));
		cp.add(upload);
		upload.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt) {
				upload_ActionPerformed(evt);
			}
		});

		download.setBounds(504, 360, 147, 25);
		download.setText("Download");
		download.setFont(new Font("Dialog", Font.PLAIN, 13));
		cp.add(download);
		download.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent evt) {
				download_ActionPerformed(evt);
			}
		});

		jLabel4.setBounds(536, 208, 112, 20);
		jLabel4.setText("Remaining:");
		jLabel4.setFont(new Font("Dialog", Font.PLAIN, 13));
		cp.add(jLabel4);
		frameRemaining.setBounds(536, 232, 113, 24);
		frameRemaining.setEditable(false);
		frameRemaining.setText(String.valueOf(worker.framesRemaining()));
		frameRemaining.setFont(new Font("Dialog", Font.PLAIN, 13));
		cp.add(frameRemaining);
		animList.setFont(new Font("Dialog", Font.PLAIN, 13));
		frameList.setFont(new Font("Dialog", Font.PLAIN, 13));
		// Ende Komponenten
		animList.addListSelectionListener(this);
		frameList.addListSelectionListener(this);
		setResizable(false);
		setVisible(true);
	}

	// Anfang Methoden

	// Anfang Ereignisprozeduren
	
	public void enterFullscreen(ActionEvent evt) {
		ledView.enterFullscreen();
		FullscreenWindow fw = new FullscreenWindow(worker, cubeCanvas, ledView, this);
	
	}
	
	public void editA_ActionPerformed(ActionEvent evt) {

		if (animList.getSelectedIndex() == -1) {
			errorMessage("Please select an animation.");
		} else if (frameList.getSelectedIndex() == -1) {
			errorMessage("Please select a Frame.");
		} else {
			@SuppressWarnings("unused")
			layerEditFrame layerFrame1 = new layerEditFrame(
					animList.getSelectedIndex(), frameList.getSelectedIndex(),
					0, worker, this);

		}
	}

	public void editB_ActionPerformed(ActionEvent evt) {
		if (animList.getSelectedIndex() == -1) {
			errorMessage("Please select an animation.");
		} else if (frameList.getSelectedIndex() == -1) {
			errorMessage("Please select a Frame.");
		} else {
			@SuppressWarnings("unused")
			layerEditFrame layerFrame1 = new layerEditFrame(
					animList.getSelectedIndex(), frameList.getSelectedIndex(),
					1, worker, this);
		}
	}

	public void editC_ActionPerformed(ActionEvent evt) {
		if (animList.getSelectedIndex() == -1) {
			errorMessage("Please select an animation.");
		} else if (frameList.getSelectedIndex() == -1) {
			errorMessage("Please select a Frame.");
		} else {
			@SuppressWarnings("unused")
			layerEditFrame layerFrame1 = new layerEditFrame(
					animList.getSelectedIndex(), frameList.getSelectedIndex(),
					2, worker, this);
		}
	}

	public void editD_ActionPerformed(ActionEvent evt) {
		if (animList.getSelectedIndex() == -1) {
			errorMessage("Please select an animation.");
		} else if (frameList.getSelectedIndex() == -1) {
			errorMessage("Please select a Frame.");
		} else {
			@SuppressWarnings("unused")
			layerEditFrame layerFrame1 = new layerEditFrame(
					animList.getSelectedIndex(), frameList.getSelectedIndex(),
					3, worker, this);
		}
	}

	public void editE_ActionPerformed(ActionEvent evt) {
		if (animList.getSelectedIndex() == -1) {
			errorMessage("Please select an animation.");
		} else if (frameList.getSelectedIndex() == -1) {
			errorMessage("Please select a Frame.");
		} else {
			@SuppressWarnings("unused")
			layerEditFrame layerFrame1 = new layerEditFrame(
					animList.getSelectedIndex(), frameList.getSelectedIndex(),
					4, worker, this);
		}
	}

	public void editF_ActionPerformed(ActionEvent evt) {
		if (animList.getSelectedIndex() == -1) {
			errorMessage("Please select an animation.");
		} else if (frameList.getSelectedIndex() == -1) {
			errorMessage("Please select a Frame.");
		} else {
			@SuppressWarnings("unused")
			layerEditFrame layerFrame1 = new layerEditFrame(
					animList.getSelectedIndex(), frameList.getSelectedIndex(),
					5, worker, this);
		}
	}

	public void editG_ActionPerformed(ActionEvent evt) {
		if (animList.getSelectedIndex() == -1) {
			errorMessage("Please select an animation.");
		} else if (frameList.getSelectedIndex() == -1) {
			errorMessage("Please select a Frame.");
		} else {
			@SuppressWarnings("unused")
			layerEditFrame layerFrame1 = new layerEditFrame(
					animList.getSelectedIndex(), frameList.getSelectedIndex(),
					6, worker, this);
		}
	}

	public void editH_ActionPerformed(ActionEvent evt) {
		if (animList.getSelectedIndex() == -1) {
			errorMessage("Please select an animation.");
		} else if (frameList.getSelectedIndex() == -1) {
			errorMessage("Please select a Frame.");
		} else {
			@SuppressWarnings("unused")
			layerEditFrame layerFrame1 = new layerEditFrame(
					animList.getSelectedIndex(), frameList.getSelectedIndex(),
					7, worker, this);
		}
	}

	public void frameUp_ActionPerformed(ActionEvent evt) {
		int i = frameList.getSelectedIndex();
		if ((i > 0) && (frameListModel.getSize() >= 2)) {
			Object tmp = frameListModel.get(i);
			frameListModel.set(i, frameListModel.get(i - 1));
			frameListModel.set(i - 1, tmp);
			frameList.setSelectedIndex(i - 1);
			worker.moveFrame(worker.UP, animList.getSelectedIndex(),
					frameList.getSelectedIndex());
		}
	}

	public void frameDown_ActionPerformed(ActionEvent evt) {
		int i = frameList.getSelectedIndex();
		if ((i >= 0) && (frameListModel.getSize() >= 2)
				&& (i < (frameListModel.getSize() - 1))) {
			Object tmp = frameListModel.get(i);
			frameListModel.set(i, frameListModel.get(i + 1));
			frameListModel.set(i + 1, tmp);
			frameList.setSelectedIndex(i + 1);
			worker.moveFrame(worker.DOWN, animList.getSelectedIndex(),
					frameList.getSelectedIndex());
		}
	}

	public void frameAdd_ActionPerformed(ActionEvent evt) {
		if (animList.getSelectedIndex() == -1) {
			errorMessage("Please select an animation!");
		} else {
			worker.addFrame(animList.getSelectedIndex());
			frameRemaining.setText(Integer.toString(worker.framesRemaining()));
			int n = worker.numOfFrames(animList.getSelectedIndex()) - 1;
			if (n < 0) {
				n = 0;
			}
			frameListModel.add(n,
					worker.getFrameName(animList.getSelectedIndex(), n));
			frameList.setModel(frameListModel);
		}

	}

	public void frameRemove_ActionPerformed(ActionEvent evt) {
		if (animList.getSelectedIndex() == -1) {
			errorMessage("Select an animation.");
		} else if (frameList.getSelectedIndex() == -1) {
			errorMessage("Select a Frame.");
		} else {
			worker.removeFrame(animList.getSelectedIndex(),
					frameList.getSelectedIndex());
			frameRemaining.setText(Integer.toString(worker.framesRemaining()));
			frameListModel.removeElementAt(frameList.getSelectedIndex());
			frameList.setModel(frameListModel);
		}
	}

	public void animUp_ActionPerformed(ActionEvent evt) {
		int i = animList.getSelectedIndex();
		if ((i > 0) && (animModel.getSize() >= 2)) {
			Object tmp = animModel.get(i);
			animModel.set(i, animModel.get(i - 1));
			animModel.set(i - 1, tmp);
			animList.setSelectedIndex(i - 1);
			worker.moveAnimation(worker.UP, animList.getSelectedIndex());
		}
	}

	public void animDown_ActionPerformed(ActionEvent evt) {
		int i = animList.getSelectedIndex();
		if ((i >= 0) && (animModel.getSize() >= 2)
				&& (i < (animModel.getSize() - 1))) {
			Object tmp = animModel.get(i);
			animModel.set(i, animModel.get(i + 1));
			animModel.set(i + 1, tmp);
			animList.setSelectedIndex(i + 1);
			worker.moveAnimation(worker.DOWN, animList.getSelectedIndex());
		}
	}

	public void animAdd_ActionPerformed(ActionEvent evt) {
		if (worker.addAnimation() == -1) {
			errorMessage("Could not add animation!");
		} else {
			animModel.clear();
			for (int i = 0; i < worker.numOfAnimations(); i++) {
				animModel.add(i, worker.getAnimationName(i));
			}
			animList.setModel(animModel);
		}

	}

	public void animRemove_ActionPerformed(ActionEvent evt) {
		if (animList.getSelectedIndex() == -1) {
			errorMessage("Select an animation.");
		} else {
			worker.removeAnimation(animList.getSelectedIndex());
			animModel.removeElementAt(animList.getSelectedIndex());
			animList.setModel(animModel);
		}
	}

	public void load_ActionPerformed(ActionEvent evt) {
		JFileChooser fc = new JFileChooser();
		int ret = fc.showOpenDialog(this);
		if (ret == JFileChooser.APPROVE_OPTION) {
			File file = fc.getSelectedFile();
			if (fileSelected == false) {
				fileSelected = true;
			}
			animPath.setText(file.getPath());
			worker.loadState(animPath.getText());
			animModel.clear();
			for (int i = 0; i < worker.numOfAnimations(); i++) {
				animModel.addElement(worker.getAnimationName(i));
			}
			animList.setModel(animModel);

			frameListModel.clear();
			frameList.setModel(frameListModel);
		}
	}

	public void save_ActionPerformed(ActionEvent evt) {
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

	public void saveAs_ActionPerformed(ActionEvent evt) {
		JFileChooser fc;
		if (fileSelected == true) {
			fc = new JFileChooser(new File(animPath.getText()).getParentFile());
		} else {
			fc = new JFileChooser();
		}
		int ret = fc.showSaveDialog(this);
		if (ret == JFileChooser.APPROVE_OPTION) {
			File file = fc.getSelectedFile();
			if (fileSelected == false) {
				fileSelected = true;
			}
			animPath.setText(file.getPath());
			worker.saveState(animPath.getText());
		}
	}

	public void upload_ActionPerformed(ActionEvent evt) {
		if (jComboBox1.getSelectedItem().equals("Select serial port...")) {
			errorMessage("No serial port selected...");
		} else {
			if (worker
					.probeCubeConnected((String) jComboBox1.getSelectedItem())) {
				if (worker.uploadState((String) jComboBox1.getSelectedItem()) != 0) {
					errorMessage("Could not upload data!");
				}
			} else {
				errorMessage("Cube does not respond...");
			}
		}
	}

	public void download_ActionPerformed(ActionEvent evt) {
		if (jComboBox1.getSelectedItem().equals("Select serial port...")) {
			errorMessage("No serial port selected...");
		} else {
			worker.downloadState((String) jComboBox1.getSelectedItem());
		}
	}

	public Led3D get3D() {
		return ledView;
	}

	public static void main(String[] args) {
		Frame f = new Frame("Cube Control");
		Led3D l = f.get3D();
		java.util.Scanner sc = new java.util.Scanner(System.in);
		System.out.println("#### Cube Control Debug Console ####");
		System.out.println("## Enter a Command ('h' for help) ##");
		System.out.print("$> ");

		do {
			if (sc.hasNextLine()) {
				String s = sc.nextLine();

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
					s = s.substring(5);
					f.jComboBox1.addItem(s);
					f.jComboBox1.setSelectedItem(s);
				}

				if (s.startsWith("send ")) {
					s = s.substring(5);
					HelperUtility.openPort(((String) f.jComboBox1
							.getSelectedItem()) + "\n");
					short[] dat = toShortArray(s);
					HelperUtility.writeData(dat, dat.length);
					HelperUtility.closePort();
				}

				if (s.startsWith("read ")) {
					s = s.substring(5);
					int leng = Integer.parseInt(s);
					HelperUtility.openPort((String) f.jComboBox1
							.getSelectedItem());
					short[] data = HelperUtility.readData(leng);
					System.out.println(shortToString(data));
					HelperUtility.closePort();
				}

				if (s.equals("s") || s.equals("scan")) {
					String[] sPorts = f.worker.getSerialPorts();
					f.jComboBox1.removeAllItems();
					for (int i = 0; i < sPorts.length; i++) {
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
							.println("\t'help'   / 'h'\t:\tShow this message");
					System.out
							.println("\t'quit'   / 'q'\t:\tExit Cube Control");
				}

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
