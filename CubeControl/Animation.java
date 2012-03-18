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
import java.util.Collections;

/**
 * A collection of frames that represent an entire animation.
 * 
 * @author Thomas Buck
 * @author Max Nuding
 * @author Felix Bäder
 * @version 1.0
 */

public class Animation {
	AFrame frames[] = new AFrame[1];
	private String name = "Animation";
	private static int lastIndex = 1;

	/**
	 * Create an empty frame in this new animation.
	 */
	public Animation() {
		frames[0] = new AFrame();
		name = "Animation " + lastIndex++;
	}

	/**
	 * Gets the specified frame in this animation
	 * 
	 * @param i Index of frame you want
	 * @return The selected frame
	 */
	public AFrame getFrame(int i) {
		if (i >= frames.length) {
			return null;
		} else {
			return frames[i];
		}
	}

	/**
	 * Move an frame up.
	 * @param i the animation you want to move
	 */
	public void moveFrameUp(int i) {
		if (i > 0) {
			AFrame tmp = frames[i];
			frames[i] = frames[i - 1];
			frames[i - 1] = tmp;
		}
	}

	/**
	 * Move an frame down.
	 * @param i the animation you want to move
	 */
	public void moveFrameDown(int i) {
		if (i < (frames.length - 1)) {
			AFrame tmp = frames[i];
			frames[i] = frames[i + 1];
			frames[i + 1] = tmp;
		}
	}

	/**
	 * Sets the selected Frame
	 * 
	 * @param f the frame you want to place in this animation
	 * @param i Index of the frame you want to override
	 */
	public void setFrame(AFrame f, int i) {
		if (i < frames.length) {
			frames[i] = f;
		} else {
			addFrame(f);
		}
	}

	/**
	 * Add a new (empty) frame at the end
	 */
	public void addFrame() {
		extendArray();
		frames[frames.length - 1] = new AFrame();
	}

	/**
	 * Add a specified frame at the end
	 *
	 * @param f data for new frame
	 */
	public void addFrame(AFrame f) {
		addFrame();
		frames[frames.length - 1] = f;
	}

	/**
	 * Return size of this animation, in number of frames.
	 * 
	 * @return number of frames
	 */
	public int size() {
		return frames.length;
	}

	/**
	 * Removes a frame. Subsequent frames shift to the left.
	 * 
	 * @param i Index of frame you want to remove
	 */
	public void removeFrame(int i) {
		shiftOver(i);
		shrinkArray();
	}

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

	private void extendArray() {
		AFrame newArray[] = new AFrame[frames.length + 1];
		for (int i = 0; i < frames.length; i++) {
			newArray[i] = frames[i];
		}
		frames = newArray;
	}

	private void shrinkArray() {
		AFrame newArray[] = new AFrame[frames.length - 1];
		for (int i = 0; i < newArray.length; i++) {
			newArray[i] = frames[i];
		}
		frames = newArray;
	}

	private void shiftOver(int toForget) {
		for (int i = (toForget + 1); i < frames.length; i++) {
			frames[i - 1] = frames[i];
		}
	}
}
