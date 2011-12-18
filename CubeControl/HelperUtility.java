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
 * Helper class which runs our native library, which is loaded from inside the Jar.
 * @author Thomas Buck
 * @author Max Nuding
 * @author Felix Bäder
 * @version 1.0
 */

import java.io.*;
import java.nio.channels.*;
import java.nio.*;

public class HelperUtility {

	// Load libraries, copy from Jar if needed
	// Mostly from:
	// http://stackoverflow.com/questions/1611357/how-to-make-a-jar-file-that-include-dll-files
	static {
		// System.out.println("Loading Serial Library...");
		loadFromJar();
	}

	/**
	 * When packaged into JAR extracts DLLs, places these into
	 */
	private static void loadFromJar() {
		// we need to put DLL to temp dir
		String os = System.getProperty("os.name").toLowerCase();
		String path = "CC_";
		if (os.indexOf("windows") > -1) {
			loadLib(path, "Serial.dll");
		} else if (os.indexOf("mac") > -1) {
			loadLib(path, "libSerial.jnilib");
		}
	}

	/**
	 * Puts library to temp dir and loads to memory
	 */
	private static void loadLib(String path, String name) {
		try {
			// have to use a stream
			InputStream in = HelperUtility.class.getResourceAsStream(name);
			// System.out.println("Input Stream: " + in);
			File fileOut = new File(System.getProperty("java.io.tmpdir") + "/" + path + name);
			OutputStream out = new FileOutputStream(fileOut);
			ReadableByteChannel inChannel = Channels.newChannel(in);
			WritableByteChannel outChannel = Channels.newChannel(out);
			fastChannelCopy(inChannel, outChannel);
			inChannel.close();
			outChannel.close();
			System.load(fileOut.toString());
		} catch (Exception e) {
			System.out.println("Failed to load Serial Library:");
			e.printStackTrace();
		}
	}

	// http://thomaswabner.wordpress.com/2007/10/09/fast-stream-copy-using-javanio-channels/
	public static void fastChannelCopy(ReadableByteChannel src, WritableByteChannel dest) throws IOException {
		ByteBuffer buffer = ByteBuffer.allocateDirect(16 * 1024);
		while (src.read(buffer) != -1) {
			// prepare the buffer to be drained
			buffer.flip();
			// write to the channel, may block
			dest.write(buffer);
			// If partial transfer, shift remainder down
			// If buffer is empty, same as doing clear()
			buffer.compact();
		}
		// EOF will leave buffer in fill state
		buffer.flip();
		// make sure the buffer is fully drained.
		while (buffer.hasRemaining()) {
			dest.write(buffer);
		}
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
