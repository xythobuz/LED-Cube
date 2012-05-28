/*
 * SerialHelper.java
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
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with LED-Cube.  If not, see <http://www.gnu.org/licenses/>.
 */
 /**
 * Implement commands of cube. You can only open one serial port.
 * If you want to communicate with another port, close this one first!
 * @author Thomas Buck
 * @author Max Nuding
 * @author Felix Bäder
 * @version 1.0
 */

import java.util.Date;
import java.util.ArrayList;
import java.util.List;

public class SerialHelper {

	private final short OK = 0x42;
	private final short ERROR = 0x23;

	private Frame frame;

	/**
	 * Create new SerialHelper.
	 * @param serialPort Name of serial port to use.
	 * @param frame Frame to show error messages 
	 * @throws Exception Could not open serial port.
	 */
	public SerialHelper(String serialPort, Frame frame) throws Exception {
		if (HelperUtility.openPort(serialPort) == false) {
			printErrorMessage("Could not open serial port \"" + serialPort + "\"");
			throw new Exception("Could not open serial port \"" + serialPort + "\"");
		}
		this.frame = frame;
	}

	/**
	 * Poll to check if the cube is there...
	 * @return TRUE if cube is connected.
	 */
	public boolean probeForCube() {
		short[] data = new short[1];
		data[0] = OK;
		if (!writeData(data)) {
			printErrorMessage("Timeout sending probe for Cube");
			return false;
		}
		data = readData(1);
		if ((data == null) || (data[0] != OK)) {
			printErrorMessage("No response from cube!");
			if (data == null) {
				System.out.println("Probe was null!");
			} else {
				System.out.println("Probe was " + data[0]);
			}
			return false;
		}
		return true;
	}

	/**
	 * Recieve all animations saved in cube.
	 * @return A cubeWorker populated with the new data or null.
	 */
	public cubeWorker getAnimationsFromCube() {
		Animation[] animations;
		int animationCount, frameCount;
		short[] data, tmp = new short[1];

		// Send download command
		tmp[0] = 'g';
		if (!writeData(tmp)) {
			printErrorMessage("Timout sending Command");
			return null;
		}
		data = readData(1);
		if ((data == null) || (data[0] != OK)) {
			printErrorMessage("Response Error");
			if (data == null) {
				System.out.println("Download was null!");
			} else {
				System.out.println("Download was " + data[0]);
			}
			return null;
		}

		// Get animation count
		data = readData(1);
		if (data == null) {
			printErrorMessage("Response Error.");
			System.out.println("Did not get animation count!");
			return null;
		} else {
			animationCount = data[0];
		}
		tmp[0] = OK;
		if (!writeData(tmp)) {
			printErrorMessage("Timout acknowledging animation count!");
			return null;
		}

		animations = new Animation[animationCount];

		// Get animations
		for (int a = 0; a < animationCount; a++) {
			Animation currentAnim = new Animation();

			// Get number of frames
			data = readData(1);
			if (data == null) {
				printErrorMessage("Response Error");
				System.out.println("Did not get frame count!");
				return null;
			} else {
				frameCount = data[0];
			}
			tmp[0] = OK;
			if (!writeData(tmp)) {
				printErrorMessage("Timout sending response Frame Count.");
				return null;
			}

			// Get frames
			for (int f = 0; f < frameCount; f++) {
				AFrame currentFrame = new AFrame();

				// Get frame duration
				data = readData(1);
				if (data == null) {
					printErrorMessage("Response Error");
					System.out.println("Did not get frame duration!");
					return null;
				} else {
					currentFrame.setTime(data[0]);
				}
				tmp[0] = OK;
				if (!writeData(tmp)) {
					printErrorMessage("Timout sending response Frame Duration");
					return null;
				}

				// Get frame data
				data = readData(64);
				if (data == null) {
					printErrorMessage("Response Error");
					System.out.println("Did not get frame data!");
					return null;
				} else {
					currentFrame.setData(data);
				}
				tmp[0] = OK;
				if (!writeData(tmp)) {
					printErrorMessage("Timout sending response Frame Data");
					return null;
				}

				// Add frame to animation
				currentAnim.setFrame(currentFrame, f);
			}

			// Add animation to animations list
			animations[a] = currentAnim;
		}

		return new cubeWorker(animations, frame);
	}

	/**
	 * Send all animations in a cubeWorker to the Cube.
	 * @param worker cubeWorker that containts data.
	 * @return 0 on success. -1 on error.
	 */
	public int sendAnimationsToCube(cubeWorker worker) {
		short[] data, tmp = new short[1];

		// Send upload command
		tmp[0] = 's';
		if (!writeData(tmp)) {
			printErrorMessage("Timout sending Command");
			return -1;
		}
		data = readData(1);
		if ((data == null) || (data[0] != OK)) {
			printErrorMessage("Response Error Command");
			if (data == null) {
				System.out.println("Response Command was null!");
			} else {
				System.out.println("Response Command was " + data[0]);
			}
			return -1;
		}

		// Send animation count
		tmp[0] = (short)worker.size();
		if (!writeData(tmp)) {
			printErrorMessage("Timeout sending numOfAnimations");
			return -1;
		}
		data = readData(1);
		if ((data == null) || (data[0] != OK)) {
			printErrorMessage("Response Error");
			if (data == null) {
				System.out.println("Response Count was null!");
			} else {
				System.out.println("Response Count was " + data[0]);
			}
			return -1;
		}

		// Send animations
		for (int a = 0; a < worker.size(); a++) {
			// Send frame count
			tmp[0] = (short)worker.getAnimation(a).size();
			if (!writeData(tmp)) {
				printErrorMessage("Timeout sending numOfFrames");
				return -1;
			}
			data = readData(1);
			if ((data == null) || (data[0] != OK)) {
				printErrorMessage("Response Error");
				if (data == null) {
				System.out.println("Frame Count was null!");
			} else {
				System.out.println("Frame Count was " + data[0]);
			}
				return -1;
			}

			// Send frames
			for (int f = 0; f < worker.getAnimation(a).size(); f++) {
				// Frame duration
				tmp[0] = worker.getAnimation(a).getFrame(f).getTime();
				if (!writeData(tmp)) {
					printErrorMessage("Timeout sending Frame duration");
					return -1;
				}
				data = readData(1);
				if ((data == null) || (data[0] != OK)) {
					printErrorMessage("Response Error");
					if (data == null) {
						System.out.println("Duration was null!");
					} else {
						System.out.println("Duration was " + data[0]);
					}
					return -1;
				}

				// Frame data
				if (!writeData(worker.getAnimation(a).getFrame(f).getData())) {
					printErrorMessage("Timeout sending Frame");
					return -1;
				}
				data = readData(1);
				if ((data == null) || (data[0] != OK)) {
					printErrorMessage("Response Error");
					if (data == null) {
						System.out.println("Datawas null!");
					} else {
						System.out.println("Data was " + data[0]);
					}
					return -1;
				}
			}
		}

		// Send finish
		tmp = new short[4];
		tmp[0] = OK;
		tmp[1] = OK;
		tmp[2] = OK;
		tmp[3] = OK;
		if (!writeData(tmp)) {
			printErrorMessage("Timeout sending Finish");
			return -1;
		}
		data = readData(1);
		if ((data == null) || (data[0] != OK)) {
			printErrorMessage("Response Error");
			if (data == null) {
				System.out.println("Finish was null!");
			} else {
				System.out.println("Finish was " + data[0]);
			}
			return -1;
		}
		return 0;
	}

	/**
	 * Close the serial port again.
	 */
	public void closeSerialPort() {
		HelperUtility.closePort();
	}

	private void printErrorMessage(String s) {
		System.out.println("SerialHelper: " + s);
		frame.errorMessage("Serial Error", s);
	}

	private boolean writeData(short[] data) {
		// write data. return true if success
		long startdate = (new Date()).getTime();

		SerialWriteThread t = new SerialWriteThread(data);
		t.start();
		while (!t.dataWasSent()) {
			if ((new Date()).getTime() >= (startdate + (data.length * 1000))) {
				// More than (length * 1000) milliseconds went by
				// => 1 second per byte
				return false;
			}
		}
		return true;
	}

	private short[] readData(int length) {
		// return data read or null if timeout
		long startdate = (new Date()).getTime();

		SerialReadThread t = new SerialReadThread(length);
		t.start();
		while (!t.dataIsReady()) {
			if ((new Date()).getTime() >= (startdate + (length * 1000))) {
				// More than (length * 1000) milliseconds went by
				// => 1 second per byte
				return null;
			}
		}
		return t.getSerialData();
	}
}