/*
 * Animation.java
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
import java.util.ArrayList;
import java.util.List;

/**
 * A collection of frames that represent an entire animation.
 * 
 * @author Thomas Buck
 * @author Max Nuding
 * @author Felix Bäder
 * @version 1.0
 */

public class Animation {
	List<AFrame> frames = new ArrayList<AFrame>();
	private int lastFrameIndex = 0;
	private String name = "Animation";

	/**
	 * Gets the name of this animation
	 * 
	 * @return name of this animation
	 */
	public String getName() {
		return name;
	}

	/**
	 * Sets the name of this animation
	 * 
	 * @param s
	 *            new name
	 */
	public void setName(String s) {
		name = s;
	}

	/**
	 * Gets the specified frame in this animation
	 * 
	 * @param i Index of frame you want
	 * @return The selected frame
	 */
	public AFrame get(int i) {
		try {
			return frames.get(i);
		} catch (IndexOutOfBoundsException e) {
			System.out.println(e.toString());
			return null;
		}
	}

	/**
	 * Sets the selected Frame
	 * 
	 * @param f the frame you want to place in this animation
	 * @param i Index of the frame you want to override
	 */
	public void set(AFrame f, int i) {
		if (lastFrameIndex <= i) {
			try {
				frames.set(i, f);
			} catch (IndexOutOfBoundsException e) {
				System.out.println(e.toString());
			}
		}
	}

	/**
	 * Removes a frame. Subsequent frames shift to the left.
	 * 
	 * @param i Index of frame you want to remove
	 */
	public void remove(int i) {
		try {
			frames.remove(i);
		} catch (IndexOutOfBoundsException e) {
			System.out.println(e.toString());
		}
	}

	/**
	 * Add a new (empty) frame at the specified position
	 * 
	 * @param i Index you want to place the new frame in
	 * @see Animation#size size()
	 */
	public void add(int i) {
		try {
			frames.add(i, new AFrame());
			lastFrameIndex++;
		} catch (IndexOutOfBoundsException e) {
			System.out.println(e.toString());
		}
	}

	/**
	 * Add a specified frame at the specified position
	 * 
	 * @param i Index for new frame
	 * @param f data for new frame
	 */
	public void add(int i, AFrame f) {
		try {
			frames.add(i, f);
			lastFrameIndex++;
		} catch (IndexOutOfBoundsException e) {
			System.out.println(e.toString());
		}
	}

	/**
	 * Return size of this animation, in number of frames
	 * 
	 * @return number of frames
	 */
	public int size() {
		return frames.size();
	}
}
