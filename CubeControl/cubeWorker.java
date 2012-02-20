/*
 * cubeWorker.java
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

/*
 * This class handles one animation file. This file can contain
 * many animations, but has to be only 1Mbit in size (128*1024 Byte).
 */
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;
import java.util.Collections;

/**
 * This class holds all Data of the Application. Additionally it performs the
 * transmission of animation data to/from the cube and saves/loads animations
 * in/from a file.
 * 
 * @author Thomas Buck
 * @author Felix Bäder
 * @author Max Nuding
 * @version 1.0
 */

public class cubeWorker {

	private final int framesRemaining = 2016; // (128 * 1024) / 65 = 2016,...
	private boolean changedState = false;
	private Frame parentFrame;
	private Animation[] animations = new Animation[1];

	/**
	 * Creates a worker with one animation, containing an empty frame.
	 */
	public cubeWorker(Frame parent) {
		animations[0] = new Animation();
		animations[0].setName("Animation 1");
		parentFrame = parent;
	}

	public cubeWorker(Animation[] anims, Frame parent) {
		animations = anims;
		parentFrame = parent;
	}

	/**
	 * Returns number of frames in this cubeWorker.
	 *
	 * @return number of frames.
	 */
	public int completeNumOfFrames() {
		int c = 0;
		for (int i = 0; i < size(); i++) {
			c += getAnimation(i).size();
		}
		return c;
	}

	// --------------------
	// Misc. Methods
	// --------------------

	/**
	 * Get the number of animations in this worker.
	 * 
	 * @return number of animations
	 */
	public int size() {
		return animations.length;
	}

	/**
	 * Get the number of frames you can add until the Cubes memory is full.
	 * 
	 * @return number of frames remaining
	 */
	public int memoryRemaining() {
		return framesRemaining - completeNumOfFrames();
	}

	/**
	 * Add an animation. It has an initial empty frame
	 * 
	 * @return Index of new animation, or -1 if not enough space remaining.
	 */
	public int addAnimation() {
		changedState = true;
		if (memoryRemaining() <= 0) {
			return -1;
		} else {
			extendArray();
			animations[animations.length - 1] = new Animation();
			return animations.length - 1;
		}
	}

	/**
	 * Remove an animation.
	 * 
	 * @param i the animation you want to delete
	 */
	public void removeAnimation(int i) {
		changedState = true;
		shiftOver(i);
		shrinkArray();
	}

	/**
	 * Move an animation up.
	 * @param i the animation you want to move
	 */
	public void moveAnimationUp(int i) {
		if (i > 0) {
			Animation tmp = animations[i];
			animations[i] = animations[i - 1];
			animations[i - 1] = tmp;
		}
	}

	/**
	 * Move an animation down.
	 * @param i the animation you want to move
	 */
	public void moveAnimationDown(int i) {
		if (i < (animations.length - 1)) {
			Animation tmp = animations[i];
			animations[i] = animations[i + 1];
			animations[i + 1] = tmp;
		}
	}

	public Animation getAnimation(int i) {
		if (i < animations.length) {
			return animations[i];
		} else {
			return null;
		}
	}

	public void setAnimation(Animation a, int i) {
		changedState = true;
		if (i < animations.length) {
			animations[i] = a;
		}
	}

	/**
	 * Loads an animation file into this worker.
	 * 
	 * @param path Path of file to load
	 * @return 0 on success, -1 on error.
	 */
	public int loadState(String path) {
		changedState = false;
		try {
			animations = AnimationUtility.readFile(path);
		} catch (Exception e) {
			System.out.println("Did not load!");
			e.printStackTrace(System.out);
			return -1;
		}
		int size = 0;
		for (int i = 0; i < animations.length; i++) {
			size += animations[i].size();
		}
		if (size > framesRemaining) {
			return -1;
		}
		return 0;
	}

	/**
	 * Save the state of this object into a file.
	 * 
	 * @param path Path to save file in
	 * @return 0 on success, -1 on error
	 */
	public int saveState(String path) {
		changedState = false;
		AnimationUtility.writeFile(path, animations);
		if (AnimationUtility.getLastError() != null) {
			System.out.println(AnimationUtility.getLastError());
			return -1;
		}
		return 0;
	}

	/**
	 * Check if something changed after loading/saving.
	 * 
	 * @return TRUE if something changed, FALSE otherwise
	 */
	public boolean changedStateSinceSave() {
		return changedState;
	}

	/**
	 * Send all animations to the cube.
	 * 
	 * @param port Name of serial port to use
	 * @return 0 on success, -1 on error
	 */
	public int cubeSendState(String port) {
		try {
			SerialHelper sh = new SerialHelper(port, parentFrame);
			int ret = sh.sendAnimationsToCube(this);
			sh.closeSerialPort();
			return ret;
		} catch (Exception e) {
			return -1;
		}
	}

	/**
	 * Get the array of animations in this worker.
	 * @return animation array
	 */
	public Animation[] getAnimationArray() {
		return animations;
	}

	/**
	 * Get all animations from the cube, place it in this object
	 * 
	 * @param port Name of serial port to use
	 * @return 0 on success, -1 on error
	 */
	public int cubeGetState(String port) {
		try {
			SerialHelper sh = new SerialHelper(port, parentFrame);
			cubeWorker ret = sh.getAnimationsFromCube();
			sh.closeSerialPort();
			if (ret == null) {
				return -1;
			} else {
				changedState = true;
				animations = ret.getAnimationArray();
				return 0;
			}
		} catch (Exception e) {
			return -1;
		}
	}

	/**
	 * Try to speak with the cube.
	 * 
	 * @return TRUE if cube responds
	 * @param port Name of serial port
	 */
	public boolean cubeProbeConnected(String port) {
		try {
			SerialHelper sh = new SerialHelper(port, parentFrame);
			boolean response = sh.probeForCube();
			sh.closeSerialPort();
			return response;
		} catch (Exception e) {
			return false;
		}
	}

	private void extendArray() {
		Animation newArray[] = new Animation[animations.length + 1];
		for (int i = 0; i < animations.length; i++) {
			newArray[i] = animations[i];
		}
		animations = newArray;
	}

	private void shrinkArray() {
		Animation newArray[] = new Animation[animations.length - 1];
		for (int i = 0; i < newArray.length; i++) {
			newArray[i] = animations[i];
		}
		animations = newArray;
	}

	private void shiftOver(int toForget) {
		for (int i = (toForget + 1); i < animations.length; i++) {
			animations[i - 1] = animations[i];
		}
	}
}
