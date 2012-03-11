/*
 * AFrame.java
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
import java.util.Arrays;

/**
 * The representation of a single frame. Contains the data of all 512 LEDs in a
 * given time.
 * 
 * @author Thomas Buck
 * @author Max Nuding
 * @author Felix Bäder
 * @version 1.0
 */

public class AFrame {
	private short[] data = new short[64]; // data[y + (8 * z)] & (1 << x)
	private short duration = 1;
	private String name = "Frame";
	private static int lastIndex = 1;

	/**
	 * Toggle a LED in this frame
	 * @param x X Coordinate (0 - 7)
	 * @param y Y Coord. (0 - 7)
	 * @param z Z Coord. (0 - 7)
	 */
	public void toggleLED(int x, int y, int z) {
		if (x < 8) {
			if (y < 8) {
				if (z < 8) {
					data[y + (8 * z)] ^= (1 << x);
				}
			}
		}
	}

	/**
	 * Give it a nice name.
	 */
	public AFrame() {
		name = "Frame " + lastIndex++;
	}

	/**
	 * Gets the Name of this Frame
	 * 
	 * @return Name of the Frame
	 */
	public String getName() {
		return name;
	}

	/**
	 * Sets the Name of this Frame
	 * 
	 * @param s New Name
	 */
	public void setName(String s) {
		name = s;
	}

	/**
	 * Sets the Data of this Frame
	 * 
	 * @param d 64 bytes that contain data (8 bit per byte, so 8 LEDs)
	 */
	public void setData(short[] d) {
		for (int i = 0; i < 64; i++) {
			data[i] = d[i];
		}
	}

	/**
	 * Gets tha Data of this Frame
	 * 
	 * @return 64 bytes that contain data (8 bits / LEDs per byte)
	 */
	public short[] getData() {
		return data;
	}

	/**
	 * Sets the Duration of this Frame
	 * 
	 * @param t Duration of frame in (( t * (1/24) ) + (1/24)) seconds
	 */
	public void setTime(short t) {
		duration = t;
	}

	/**
	 * Gets the Duration of this Frame.
	 * 0 means (1/24) seconds.
	 * 
	 * @return Duration of frame.
	 * @see AFrame#setTime(short) setTime()
	 */
	public short getTime() {
		return duration;
	}

	/**
	 * Gets the Data of the Layer you want
	 * 
	 * @param i Number of Layer you want
	 * @return 8 byte array with data of selected layer
	 */
	public short[] getLayer(int i) {
		return Arrays.copyOfRange(data, (i * 8), (i * 8) + 8);
	}
}
