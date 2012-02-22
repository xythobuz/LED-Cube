/*
 * SerialWriteThread.java
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
 * Thread that writes data to an opened serial port.
 * @author Thomas Buck
 * @author Max Nuding
 * @author Felix Bäder
 * @version 1.0
 */

import java.lang.Thread;

public class SerialWriteThread extends Thread {

	private short[] data;
	private boolean dataSent = false;

	private static int idIndex = 0;

	/**
	 * Create a SerialWriteThread
	 * @param data Data to be written.
	 */
	public SerialWriteThread(short[] data) {
		this.data = data;
		setName("Serial Writer " + idIndex++);
	}

	/**
	 * Start writing data.
	 */
	public void run() {
		HelperUtility.writeData(data, data.length);
		dataSent = true;
	}

	/**
	 * Check if all data was sent.
	 * 
	 * @return TRUE if all data was sent.
	 */
	public boolean dataWasSent() {
		return dataSent;
	}
}