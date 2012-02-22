/*
 * SerialReadThread.java
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
 * Thread that reads data from an opened serial port.
 * @author Thomas Buck
 * @author Max Nuding
 * @author Felix Bäder
 * @version 1.0
 */

import java.lang.Thread;

public class SerialReadThread extends Thread {

	private short[] storage;
	private int length;
	private boolean dataReady = false;

	private static int idIndex = 0;

	/**
	 * Create a SerialReadThread
	 * @param length Amount of data to be read.
	 */
	public SerialReadThread(int length) {
		this.length = length;
		setName("Serial Reader " + idIndex++);
	}

	/**
	 * Start getting data.
	 */
	public void run() {
		storage = HelperUtility.readData(length);
		dataReady = true;
	}

	/**
	 * Check if all data was recieved.
	 * 
	 * @return TRUE if all data was recieved.
	 */
	public boolean dataIsReady() {
		return dataReady;
	}

	/**
	 * Get the serial data that was recieved.
	 * 
	 * @return Array with recieved bytes.
	 */
	public short[] getSerialData() {
		return storage;
	}
}