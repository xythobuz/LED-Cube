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
import java.util.Collections;
import java.util.StringTokenizer;

/**
 * This class holds all Data of the Application. Additionally it performs the transmission of animation data to/from the cube and saves/loads animations in/from a file.
 * @author Thomas Buck
 * @author Felix Bäder
 * @author Max Nuding
 * @version 1.0
 */

public class cubeWorker {

// --------------------
// Definitions
// --------------------

  final int UP = 0;
  final int DOWN = 1;

// --------------------
// Fields
// --------------------

  private ArrayList<Animation> animations = new ArrayList<Animation>();
  private int framesRemaining = 2016; // (128 * 1024) / 65 = 2016,...
  private boolean changedState = false;

// --------------------

  /**
   * Creates a worker with one animation, containing an empty frame.
   */
  cubeWorker() {
  animations.add(new Animation());
  animations.get(0).setName("Animation 1");
  animations.get(0).add(0);
  animations.get(0).get(0).setName("Frame 1");
  framesRemaining--;
  }
  
  /**
   * Creates a worker from the given animation list
   * @param anims List of animations
   */
  cubeWorker(ArrayList<Animation> anims) {
    animations = anims;
  }

// --------------------
// Misc. Methods
// --------------------

	/**
	 * Get the number of animations in this worker.
	 * @return number of animations
	 */
    public int numOfAnimations() {
           return animations.size();
    }

	/**
	 * Get the number of frames in an animation.
	 * @param selectedAnimation the animation you want to check
	 * @return number of frames in this animation
	 */
    public int numOfFrames(int selectedAnimation) {
           return animations.get(selectedAnimation).size();
    }

    /**
	 * Get the number of frames you can add until the Cubes memory is full.
	 * @return number of frames remaining
	 */
    public int framesRemaining() {
           return framesRemaining;
    }


// --------------------
// Animation Specific
// --------------------

	/**
	 * Add an animation.
	 * @return Index of new animation, or -1 if not enough space remaining.
	 */
    public int addAnimation() {
    	changedState = true;
    	if (framesRemaining <= 0) {
          return -1;
    	} else {
    	  int s = animations.size();
    	  animations.add(s, new Animation());
    	  animations.get(s).setName("Animation " + animations.size());
    	  return s;
    	}
    }

	/**
	 * Remove an animation.
	 * @param selectedAnimation the animation you want to delete
	 */
    public void removeAnimation(int selectedAnimation) {
    changedState = true;
    animations.remove(selectedAnimation);
    }

	/**
	 * Get the name of an animation
	 * @return The name
	 * @param selectedAnimation The animation you want to get the name from
	 */
  public String getAnimationName(int selectedAnimation) {
      return animations.get(selectedAnimation).getName();
    }

	/**
	 * Set the name of an animation
	 * @param s New name
	 * @param selectedAnimation Index of the animation you want to change
	 */
  public void setAnimationName(String s, int selectedAnimation) {
      changedState = true;
    animations.get(selectedAnimation).setName(s);
    }

	/**
	 * Move an animation UP or DOWN.
	 * @param dir Direction. Use UP and DOWN defined in cubeWorker
	 * @param selectedAnimation Animation you want to move
	 */
  public void moveAnimation(int dir, int selectedAnimation) {
  changedState = true;
    if (dir == UP){
        //animation moved up
      if (selectedAnimation > 0) {
        Animation tmp = animations.get(selectedAnimation);
		animations.set(selectedAnimation, animations.get(selectedAnimation - 1));
		animations.set(selectedAnimation - 1, tmp);
    }
    } else if (dir == DOWN){
      //animation moved down
    if (selectedAnimation < (animations.size() - 1)) {
        Animation tmp = animations.get(selectedAnimation);
		animations.set(selectedAnimation, animations.get(selectedAnimation + 1));
		animations.set(selectedAnimation + 1, tmp);
  }
    }
  }

// --------------------
// Frame Specific
// --------------------

	/**
	 * Get the name of a frame.
	 * @param anim Animation the frame is in
	 * @param frame Index of the frame
	 */
  public String getFrameName(int anim, int frame) {
      return animations.get(anim).get(frame).getName();
    }

	/**
	 * Set the name of a frame.
	 * @param s New name
	 * @param anim Animation Index
	 * @param frame Frame Index
	 */
    public void setFrameName(String s, int anim, int frame) {
    changedState = true;
    animations.get(anim).get(frame).setName(s);
    }

	/**
	 * Add a Frame to an animation.
	 * @return Index of new Frame or -1 if not enough space
	 * @param anim Animation Index
	 */
    public int addFrame(int anim) {
    changedState = true;
    if (framesRemaining <= 0) {
      return -1;
    }
    framesRemaining--;
    int s = animations.get(anim).size();
    animations.get(anim).add(s);
  animations.get(anim).get(s).setName("Frame " + animations.get(anim).size());
    return s;
    }

    /**
	 * Remove a frame.
	 * @param anim Animation Index
	 * @param frame Frame you want to remove
	 */
    public void removeFrame(int anim, int frame) {
    changedState = true;
    animations.get(anim).remove(frame);
    }

	/**
	 * Get the data of a frame.
	 * @param anim Animation Index
	 * @param frame Frame Index
	 * @return 64 byte array with data (8 bits per byte => 512 bits)
	 */
    public short[] getFrame(int anim, int frame) {
    return animations.get(anim).get(frame).getData();
  }

	/**
	 * Set the data of a frame
	 * @param data 64 byte array with data
	 * @param anim Animation Index
	 * @param frame Frame Index
	 * @see cubeWorker#getFrame(int, int) getFrame()
	 */
    public void setFrame(short[] data, int anim, int frame) {
    changedState = true;
    animations.get(anim).get(frame).setData(data);
    }

  /**
   * Get frame duration.
   * @param anim Animation Index
   * @param frame Frame Index
   * @return Duration. 0 means 1/24th of a second.
   */
  public short getFrameTime(int anim, int frame) {
    return animations.get(anim).get(frame).getTime();
  }

  /**
   * Set the frames duration.
   * @param time New duration
   * @param anim Animation Index
   * @param frame Frame Index
   * @see cubeWorker#getFrameTime(int, int) getFrameTime()
   */
  public void setFrameTime(short time, int anim, int frame) {
    changedState = true;
    animations.get(anim).get(frame).setTime(time);
  }

  /**
   * Move a frame.
   * @param dir Direction to move. Use UP and DOWN from cubeWorker
   * @param anim Animation Index
   * @param frame Frame Index
   * @see cubeWorker#moveAnimation(int, int) moveAnimation()
   */
  public void moveFrame(int dir, int anim, int frame){
  changedState = true;
    if (dir == UP){
        // frame moved up
        if (frame > 0) {
          AFrame tmp = animations.get(anim).frames.get(frame);
		  animations.get(anim).frames.set(frame, animations.get(anim).frames.get(frame - 1));
		  animations.get(anim).frames.set(frame - 1, tmp);
      }
    } else if (dir == DOWN){
      // frame moved down
    if (frame < (animations.get(anim).size() - 1)) {
      AFrame tmp = animations.get(anim).frames.get(frame);
		  animations.get(anim).frames.set(frame, animations.get(anim).frames.get(frame + 1));
		  animations.get(anim).frames.set(frame + 1, tmp);
    }
    }
  }

// --------------------
// File Specific
// --------------------

	/**
	 * Loads an animation file into this worker.
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
    for (int i = 0; i < animations.size(); i++) {
      size += animations.get(i).size();
    }
    framesRemaining = 2016 - size;
    if (size > 2016) {
      return -1;
    }
        return 0;
    }

	/**
	 * Save the state of this object into a file.
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
	 * @return TRUE if something changed, FALSE otherwise
	 */
    public boolean changedStateSinceSave() {
           return changedState;
    }

// --------------------
// Serial Port Specific
// --------------------

    /**
	 * Send all animations to the cube.
	 * @param port Name of serial port to use
	 * @return 0 on success, -1 on error
	 */
    public int uploadState(String port) {

           return -1;
    }

	/**
	 * Get all animations from the cube, place it in this object
	 * @param port Name of serial port to use
	 * @return 0 on success, -1 on error
	 */
    public int downloadState(String port) {

           return -1;
    }

	/**
	 * Try to speak with the cube.
	 * @return TRUE if cube responds
	 * @param port Name of serial port
	 */
	public boolean probeCubeConnected(String port) {
		return false;
	}

	/**
	 * Get the names of all available serial ports.
	 * @return Array of port names. First entry is "Select serial port..." if no others
	 */
    public String[] getSerialPorts() {
		String[] ports = {"Select serial port..."};
		String portLines = HelperUtility.getPorts();
		if (portLines == null) {
			return ports;
		}
		StringTokenizer sT = new StringTokenizer(portLines, "\n");
		int size = sT.countTokens();
		ports = new String[size];
		for (int i = 0; i < size; i++) {
			ports[i] = sT.nextToken();
		}
		return ports;
    }

// --------------------

}
