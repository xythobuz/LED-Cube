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

public class AFrame implements Comparable<AFrame> {
	private short[] data = new short[64];
	private short duration = 1;
	private String name = "Frame";
	private int order;
	private static int orderIndex = 0;

	/**
	 * Compare this frame to another frame.
	 * Compares the order in the frame list.
	 * @return 0 if equal, -1 if this one comes first, 1 if last
	 */
	public int compareTo(AFrame compareFrame) {
		if (getOrder() < compareFrame.getOrder()) {
			return -1;
		} else if (getOrder() == compareFrame.getOrder()) {
			return 0;
		} else {
			return 1;
		} 
	}

	/**
	 * Get index of frame in list of frames.
	 * @return index
	 */
	public int getOrder() {
		return order;
	}

	/**
	 * Set index of frame in list of frames.
	 * @param newOrder new index
	 */
	public void setOrder(int newOrder) {
		order = newOrder;
	}

	/**
	 * Inserts frane at end of frame list.
	 */
	public AFrame() {
		order = orderIndex++;
	}

	/**
	 * Gets the Name of this Frame
	 * 
	 * @return Name of the Frame
	 */
	public String getName() {
		return name + " (" + order + ")";
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
	 * Gets the Duration of this Frame
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
