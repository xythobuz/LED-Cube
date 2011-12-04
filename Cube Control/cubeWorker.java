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

  cubeWorker() {
  animations.add(new Animation());
  animations.get(0).setName("Animation 1");
  animations.get(0).add(0);
  animations.get(0).get(0).setName("Frame 1");
  framesRemaining--;
  }

  cubeWorker(ArrayList<Animation> anims) {
    animations = anims;
  }

// --------------------
// Misc. Methods
// --------------------

  // Returns how many animations are defined
    public int numOfAnimations() {
           return animations.size();
    }

    // Returns how many frames are in the current animation
    public int numOfFrames(int selectedAnimation) {
           return animations.get(selectedAnimation).size();
    }

  // Tells how many Frames you can add until you reached 1 Mbit...
    public int framesRemaining() {
           return framesRemaining;
    }


// --------------------
// Animation Specific
// --------------------

  // Adds a new Animation
    // Returns id if ok, -1 if error or not enough space for
    // another animation
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

    // Removes an animation
    public void removeAnimation(int selectedAnimation) {
    changedState = true;
    animations.remove(selectedAnimation);
    selectedAnimation = 0;
    }

  public String getAnimationName(int selectedAnimation) {
      return animations.get(selectedAnimation).getName();
    }

  public void setAnimationName(String s, int selectedAnimation) {
      changedState = true;
    animations.get(selectedAnimation).setName(s);
    }

  public void moveAnimation(int dir, int selectedAnimation) {
  changedState = true;
    if (dir == UP){
        //animation moved up
      if (selectedAnimation > 0) {
        Collections.swap(animations, selectedAnimation, selectedAnimation - 1);
    }
    } else if (dir == DOWN){
      //animation moved down
    if (selectedAnimation < (animations.size() - 1)) {
      Collections.swap(animations, selectedAnimation, selectedAnimation + 1);
  }
    }
  }

// --------------------
// Frame Specific
// --------------------

  public String getFrameName(int anim, int frame) {
      return animations.get(anim).get(frame).getName();
    }

    public void setFrameName(String s, int anim, int frame) {
    changedState = true;
    animations.get(anim).get(frame).setName(s);
    }

    // Adds a Frame to the current animation.
    // Returns id if okay, -1 if error
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

    // Remove the frame
    public void removeFrame(int anim, int frame) {
    changedState = true;
    animations.get(anim).remove(frame);
    }

    // Returns array with 64 bytes with led values
    public short[] getFrame(int anim, int frame) {
    return animations.get(anim).get(frame).getData();
  }

    public void setFrame(short[] data, int anim, int frame) {
    changedState = true;
    animations.get(anim).get(frame).setData(data);
    }

  // Frame duration in 1/24th of a second
  public short getFrameTime(int anim, int frame) {
    return animations.get(anim).get(frame).getTime();
  }

  public void setFrameTime(short time, int anim, int frame) {
    changedState = true;
    animations.get(anim).get(frame).setTime(time);
  }

  public void moveFrame(int dir, int anim, int frame){
  changedState = true;
    if (dir == UP){
        // frame moved up
        if (frame > 0) {
          Collections.swap(animations.get(anim).frames, frame, frame - 1);
      }
    } else if (dir == DOWN){
      // frame moved down
    if (frame < (animations.get(anim).size() - 1)) {
      Collections.swap(animations.get(anim).frames, frame, frame + 1);
    }
    }
  }

// --------------------
// File Specific
// --------------------

    // Loads an animation file into this object
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

    // Saves the state of this object in an animation file
    public int saveState(String path) {
           changedState = false;
       AnimationUtility.writeFile(path, animations);
       if (AnimationUtility.getLastError() != null) {
         System.out.println(AnimationUtility.getLastError());
         return -1;
      }
           return 0;
    }

  // Returns true if last saved state != current state
    public boolean changedStateSinceSave() {
           return changedState;
    }

// --------------------
// Serial Port Specific
// --------------------

    // sends state of object to led cube
    public int uploadState(String port) {

           return 0;
    }

    // loads all state from the cube into this object
    public int downloadState(String port) {

           return 0;
    }

    public String[] getSerialPorts() {
		String[] ports = {"Select serial port..."};
		String helperName;
		if ((System.getProperty("os.name").toLowerCase()).indexOf("win") >= 0) {
			helperName = "serialHelper.exe";
		} else {
			helperName = "serialHelper";
		}
		String[] arg = {"p"};
		String portLines = HelperUtility.runHelper(arg);
		// System.out.println("Output: " + portLines);
		if (portLines == null) {
			return ports;
		}
		StringTokenizer sT = new StringTokenizer(portLines, "\n");
		int size = sT.countTokens() + 1;
		ports = new String[size];
		ports[0] = "Select serial port...";
		for (int i = 1; i < size; i++) {
			ports[i] = sT.nextToken();
		}
		return ports;
    }

// --------------------

}
