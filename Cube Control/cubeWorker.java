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
	private int selectedAnimation = 0;
	private int selectedFrame = 0;
	private int framesRemaining = 2016; // (128 * 1024) / 65 = 2016,...
	private boolean changedState = false;

// --------------------

  cubeWorker() {
	animations.add(new Animation());
  }

// --------------------
// Misc. Methods
// --------------------

  // Returns how many animations are defined
    public int numOfAnimations() {
           return animations.size();
    }   
    
    // Returns how many frames are in the current animation
    public int numOfFrames() {
           return animations.get(selectedAnimation).size();
    }

  // Tells how many Frames you can add until you reached 1 Mbit...
    public int framesRemaining() {
           return framesRemaining;
    }


// --------------------
// Animation Specific
// --------------------

  // Selects an animation on wich the animation specific functions operate
    // Returns -1 if it does not exist, else its index
    public int selectAnimation(int index) {
		if (animations.size() <= index) {
			return -1;
		} else {
			selectedAnimation = index;
			return index;
		}
    }

  // Adds a new Animation
    // Returns id if ok, -1 if error or not enough space for
    // another animation
    public int addAnimation() {
		changedState = true;
		if (framesRemaining <= 0) {
        	return -1;
		} else {
			int s = animations.size();
			animations.add(s + 1, new Animation());
			return s;
		}
    }
    
    // Removes an animation
    public void removeAnimation() {
		changedState = true;
		animations.remove(selectedAnimation);
		selectedAnimation = 0;
    }
    
  public String getAnimationName() {
    	return animations.get(selectedAnimation).getName();
    }

  public void setAnimationName(String s) {
	    changedState = true;
		animations.get(selectedAnimation).setName(s);
    }

  public void moveAnimation(int dir) {
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
  
  // Selects an animation on wich the frame specific functions operate
    // Returns -1 if it does not exist, else its index
  public int selectFrame(int index) {
	if (animations.get(selectedAnimation).size() <= index) {
		return -1;
	} else {
		selectedFrame = index;
		return index;
	}
  }

  public String getFrameName() {
    	return animations.get(selectedAnimation).get(selectedFrame).getName();
    }

    public void setFrameName(String s) {
		changedState = true;
		animations.get(selectedAnimation).get(selectedFrame).setName(s);
    }
    
    // Adds a Frame to the current animation.
    // Returns id if okay, -1 if error
    public int addFrame() {
		changedState = true;
		if (framesRemaining <= 0) {
			return -1;
		}
		framesRemaining--;
		int s = animations.get(selectedAnimation).size();
		animations.get(selectedAnimation).add(s);
		return s;
    }
    
    // Remove the frame
    public void removeFrame() {
		changedState = true;
		animations.get(selectedAnimation).remove(selectedFrame);
		selectedFrame = 0;
    }
    
    // Returns array with 64 bytes with led values
    public byte[] getFrame() {
		return animations.get(selectedAnimation).get(selectedFrame).getData();
	}
    
    public void setFrame(byte[] data) {
		changedState = true;
		animations.get(selectedAnimation).get(selectedFrame).setData(data);
    }

	// Frame duration in 1/24th of a second
	public byte getFrameTime() {
		return animations.get(selectedAnimation).get(selectedFrame).getTime();
	}

	public void setFrameTime(byte time) {
		changedState = true;
		animations.get(selectedAnimation).get(selectedFrame).setTime(time);
	}

  public void moveFrame(int dir){
	changedState = true;
    if (dir == UP){
        // frame moved up
      	if (selectedFrame > 0) {
			Frame tmp = animations.get(selectedAnimation).get(selectedFrame);
			animations.get(selectedAnimation).set(animations.get(selectedAnimation).get(selectedFrame - 1), selectedFrame);
			animations.get(selectedAnimation).set(tmp, selectedFrame - 1);
			selectedFrame--;
		}
    } else if (dir == DOWN){
      // frame moved down
		if (selectedFrame < (animations.get(selectedAnimation).size() - 1)) {
			Frame tmp = animations.get(selectedAnimation).get(selectedFrame);
			animations.get(selectedAnimation).set(animations.get(selectedAnimation).get(selectedFrame + 1), selectedFrame);
			animations.get(selectedAnimation).set(tmp, selectedFrame + 1);
			selectedFrame++;
		}
    }
  }

// --------------------
// File Specific
// --------------------

    // Loads an animation file into this object
    public int loadState(String path) {
			changedState = false;

    		return 0;
    }
    
    // Saves the state of this object in an animation file
    public int saveState(String path) {
           changedState = false;
		   System.out.println("Saving to " + path);

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

           String[] sPorts = { "Select serial port..." }; // Has to be the first entry
           return sPorts;
    }

// --------------------

}

class Frame {
	private byte[] data = new byte[64];
	private byte duration = 1;
	private String name = "Frame";
	
	String getName() {
		return name;
	}

	void setName(String s) {
		name = s;
	}

	void setData(byte[] d) {
		data = d;
	}

	byte[] getData() {
		return data;
	}

	void setTime(byte t) {
		duration = t;
	}

	byte getTime() {
		return duration;
	}
}

class Animation {
	private ArrayList<Frame> frames = new ArrayList<Frame>();
	private int lastFrameIndex = 0;
	private String name = "Animation";

	String getName() {
		return name;
	}

	void setName(String s) {
		name = s;
	}

	Frame get(int i) {
		try {
			return frames.get(i);
		} catch (IndexOutOfBoundsException e) {
			System.out.println(e.toString());
			return null;
		}
	}

	void set(Frame f, int i) {
		if (lastFrameIndex <= i) {
			try {
				frames.set(i, f);
			} catch (IndexOutOfBoundsException e) {
				System.out.println(e.toString());
			}
		}
	}

	void remove(int i) {
		try {
			frames.remove(i);
		} catch (IndexOutOfBoundsException e) {
			System.out.println(e.toString());
		}
	}

	void add(int i) {
		try {
			frames.add(i, new Frame());
			lastFrameIndex++;
		} catch (IndexOutOfBoundsException e)  {
			System.out.println(e.toString());
		}
	}

	int size() {
		return frames.size();
	}
}
