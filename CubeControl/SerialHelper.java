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

public class SerialHelper {

	private final short OK = 0x42;
	private final short ERROR = 0x23;

	/**
	 * Create new SerialHelper.
	 * @param serialPort Name of serial port to use.
	 * @throws Exception Could not open serial port.
	 */
	public SerialHelper(String serialPort) throws Exception {
		if (HelperUtility.openPort(serialPort) == false) {
			throw new Exception("Could not open serial port \"" + serialPort + "\"");
		}
	}

	/**
	 * Recieve all animations saved in cube.
	 * @return A cubeWorker populated with the new data or null.
	 */
	public cubeWorker getAnimationsFromCube() {
		return null;
	}

	/**
	 * Send all animations in a cubeWorker to the Cube.
	 * @param worker cubeWorker that containts data.
	 */
	public void sendAnimationsToCube(cubeWorker worker) {
		short[] data;
		short[] tmp = new short[1];

		// Send animation count
		tmp[0] = (short)worker.numOfAnimations();
		if (!writeData(tmp)) {
			System.out.println("SerialHelper: Timeout numOfAnimations");
			return;
		}
		data = readData(1);
		if ((data != null) && (data[0] != OK)) {
			System.out.println("SerialHelper: Response Error");
			return;
		}

		// Send animations
		for (int a = 0; a < worker.numOfAnimations(); a++) {
			// Send frame count
			tmp[0] = (short)worker.numOfFrames(a);
			if (!writeData(tmp)) {
				System.out.println("SerialHelper: Timeout numOfFrames");
				return;
			}
			data = readData(1);
			if ((data != null) && (data[0] != OK)) {
				System.out.println("SerialHelper: Response Error");
				return;
			}

			// Send frames
			for (int f = 0; f < worker.numOfFrames(a); f++) {
				// Frame duration
				tmp[0] = worker.getFrameTime(a, f);
				if (!writeData(tmp)) {
					System.out.println("SerialHelper: Timeout Frame duration");
					return;
				}
				data = readData(1);
				if ((data != null) && (data[0] != OK)) {
					System.out.println("SerialHelper: Response Error");
					return;
				}

				// Frame data
				if (!writeData(worker.getFrame(a, f))) {
					System.out.println("SerialHelper: Timeout Frame");
					return;
				}
				data = readData(1);
				if ((data != null) && (data[0] != OK)) {
					System.out.println("SerialHelper: Response Error");
					return;
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
			System.out.println("SerialHelper: Timeout Finish");
			return;
		}
		data = readData(1);
		if ((data != null) && (data[0] != OK)) {
			System.out.println("SerialHelper: Response Error");
			return;
		}
	}

	/**
	 * Close the serial port again.
	 */
	public void closeSerialPort() {
		HelperUtility.closePort();
	}

	private boolean writeData(short[] data) {
		// write data. return true if success
		long startdate = (new Date()).getTime();

		SerialWriteThread t = new SerialWriteThread(data);
		t.start();
		while (!t.dataWasSent()) {
			if ((new Date()).getTime() >= (startdate + (data.length * 1000))) {
				// More than (length * 1000) milliseconds went by
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
				return null;
			}
		}
		return t.getSerialData();
	}
}