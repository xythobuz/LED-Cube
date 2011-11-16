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

public class cubeWorker {
    final int UP = 0;
    final int DOWN = 1;
    cubeWorker() {

    }

    // Adds a new Animation
    // Returns id if ok, -1 if error or not enough space for
    // another animation
    public int addAnimation() {

           return -1;
    }
    
    // Removes an animation
    public void removeAnimation(int index) {

    }
    
    // Returns how many animations are defined
    public int numOfAnimations() {

           return 3;
    }
    
    // Selects an animation, on which the frame specific functions operate
    // Returns -1 if it does not exist
    public int selectAnimation(int index) {
           System.out.println("Animation " + index + " selected");
           return -1;
    }
    
    public String getAnimationName(int index) {

           return "TestAnim";
    }
    
    public void setAnimationName(int index, String s) {

    }
    
    public void moveAnimation(int dir){
      if (dir == UP){
        //animation moved up
      } else if (dir == DOWN){
        //animation moved down
      }
    }
    
    // Returns how many frames are in the current animation
    public int numOfFrames() {

           return 3;
    }
    
    public String getFrameName(int index) {

           return "Test";
    }

    public void setFrameName(int index, String s) {

    }
    
    // Adds a Frame to the current animation.
    // Returns id if okay, -1 if error
    public int addFrame() {

           return -1;
    }
    
    // Remove a frame
    public void removeFrame(int index) {

    }
    
    // Returns array with 64 bytes with led values
    public byte[] getFrame(int index) {

           return null;
    }
    
    public void setFrame(int index, byte[] data) {

    }
    
    public void moveFrame(int dir){
      if (dir == UP){
        //animation moved up
      } else if (dir == DOWN){
        //animation moved down
      }
    }
    
    // Loads an animation file into this object
    public int loadState(String path) {

           return 0;
    }
    
    // Saves the state of this object in an animation file
    public int saveState(String path) {
           System.out.println("Saving to " + path);
           return 0;
    }
    
    // sends state of object to led cube
    public int uploadState(String port) {

           return 0;
    }
    
    // loads all state from the cube into this object
    public int downloadState(String port) {

           return 0;
    }
    
    // Tells how many Frames you can add until you reached 1 Mbit...
    public int framesRemaining() {

           return 0;
    }
    
    public String[] getSerialPorts() {

           String[] sPorts = {"Select serial port..."};
           return sPorts;
    }
    
    // Returns true if last saved state != current state
    public boolean changedStateSinceSave() {

           return true;
    }
}
