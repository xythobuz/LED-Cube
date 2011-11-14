public class cubeWorker {

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

           return 0;
    }
    
    // Selects an animation, on wich the frame specific functions operate
    // Returns -1 if it does not exist
    public int selectAnimation(int index) {

           return -1;
    }
    
    public String getAnimationName(int index) {

           return "Test";
    }
    
    public void setAnimationName(int index, String s) {

    }
    
    // Returns how many frames are in the current animation
    public int numOfFrames() {

           return 0;
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

           return null;
    }
    
    // Returns true if last saved state != current state
    public boolean changedStateSinceSave() {

           return false;
    }
}
