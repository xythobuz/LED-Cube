/*
 * HelperUtility.java
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
 * Helper class which runs our native library.
 * @author Thomas Buck
 * @author Max Nuding
 * @author Felix Bäder
 * @version 1.0
 */

public class HelperUtility {

	static {
		System.loadLibrary("Serial");
	}

	/**
	 * Get all the existing serial port names
	 * @return List of port names. \n between entries
	 */
	public static String getPorts() {
		String os = System.getProperty("os.name").toLowerCase();
		if (os.indexOf("windows") > -1) {
			return getThePorts("COM");
		} else if (os.indexOf("linux") > -1) {
			return getThePorts("tty");
		} else if (os.indexOf("mac") > -1) {
			return getThePorts("tty.");
		}

		// Not linux, windows or mac?
		return getThePorts("wtf?");
	}

	private static native String getThePorts(String search);

	/**
	 * Open Connection to a port
	 * @return TRUE if successful
	 * @param name Port to open
	 */
	public static native boolean openPort(String name);

	/**
	 * Close Connection to port
	 */
	public static native void closePort();

	/**
	 * Read data from Cube
	 * @param length Amount of data to read
	 * @return Data read
	 */
	public static native short[] readData(int length);

	/**
	 * Write data to Cube
	 * @param data Data to write
	 * @param length Length of data
	 */
	public static native void writeData(short[] data, int length);
}
