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
import java.util.Arrays;
import java.util.Scanner;
import java.io.FileWriter;
import java.io.File;
import java.io.IOException;

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
  animations.get(anim).get(s).setName("Frame " + (2016 - framesRemaining));
    return s;
    }

    // Remove the frame
    public void removeFrame(int anim, int frame) {
    changedState = true;
    animations.get(anim).remove(frame);
    }

    // Returns array with 64 bytes with led values
    public byte[] getFrame(int anim, int frame) {
    return animations.get(anim).get(frame).getData();
  }

    public void setFrame(byte[] data, int anim, int frame) {
    changedState = true;
    animations.get(anim).get(frame).setData(data);
    }

  // Frame duration in 1/24th of a second
  public byte getFrameTime(int anim, int frame) {
    return animations.get(anim).get(frame).getTime();
  }

  public void setFrameTime(byte time, int anim, int frame) {
    changedState = true;
    animations.get(anim).get(frame).setTime(time);
  }

  public void moveFrame(int dir, int anim, int frame){
  changedState = true;
    if (dir == UP){
        // frame moved up
        if (frame > 0) {
          AFrame tmp = animations.get(anim).get(frame);
          animations.get(anim).set(animations.get(anim).get(frame - 1), frame);
          animations.get(anim).set(tmp, frame - 1);
      }
    } else if (dir == DOWN){
      // frame moved down
    if (frame < (animations.get(anim).size() - 1)) {
      AFrame tmp = animations.get(anim).get(frame);
      animations.get(anim).set(animations.get(anim).get(frame + 1), frame);
      animations.get(anim).set(tmp, frame + 1);
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
      System.out.println(e.toString());
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

           String[] sPorts = { "Select serial port..." }; // Has to be the first entry
           return sPorts;
    }

// --------------------

}

class AnimationUtility {
  private static String lastError = null;

  public static ArrayList<Animation> readFile(String path) throws Exception {
    Scanner sc = new Scanner(new File(path));
  ArrayList<Animation> animations = new ArrayList<Animation>();

  do {
    animations.add(readAnimation(sc));
  } while (sc.hasNextLine());

  return animations;
  }

  public static void writeFile(String path, ArrayList<Animation> animations) {
    File f = new File(path);
    if (f.exists()) {
      try {
        f.delete();
      } catch (Exception e) {
        lastError = e.toString();
        return;
      }
    }
    FileWriter output = null;
    try {
      output = new FileWriter(f);
      for (int i = 0; i < animations.size(); i++) {
        writeAnimation(animations.get(i), output);
      }
    } catch (Exception e) {
      lastError = e.toString();
      return;
    } finally {
      if (output != null) {
        try {
          output.close();
        } catch (Exception e) {
          lastError = e.toString();
        }
      }
    }

  }

  public static String getLastError() {
    String tmp = lastError;
    lastError = null;
    return tmp;
  }

  private static Animation readAnimation(Scanner sc) {
  Animation anim = new Animation();
  AFrame f = null;
  int index = 0;
  int size = sc.nextInt();
  anim.setName(sc.nextLine());
  while (size > 0) {
    f = readFrame(sc, index);
    anim.add(index);
    anim.set(f, index);
    index++;
    size--;
  }

  return anim;
  }

  private static AFrame readFrame(Scanner sc, int index) {
  AFrame frame = new AFrame();
  frame.setName("Frame " + index);
  byte[] d = {};
  for (int i = 0; i < 8; i++) {
    byte[] data = hexConvert(sc.nextLine());
    d = concat(data, d);
  }
  frame.setData(d);
  d = hexConvert(sc.nextLine());
  frame.setTime(d[0]);
  return frame;
  }

  private static byte[] concat(byte[] a, byte[] b) {
  byte[] c = new byte[a.length + b.length];
  System.arraycopy(a, 0, c, 0, a.length);
  System.arraycopy(b, 0, c, a.length, b.length);
  return c;
  }

  private static byte[] hexConvert(String hex) {
  hex = hex.replaceAll("\\n", "");
  int length = hex.length();
  byte[] data = new byte[length / 2];
  for (int i = 0; i < length; i += 2) {
    data[i / 2] = (byte) ((Character.digit(hex.charAt(i), 16) << 4) + Character.digit(hex.charAt(i + 1), 16));
  }
  return data;
  }

  private static void writeAnimation(Animation anim, FileWriter f) throws IOException {
    f.write(anim.size() + "\n");
  f.write(anim.getName() + "\n");
    for (int i = 0; i < anim.size(); i++) {
      writeFrame(anim.get(i), f);
    }
    f.write("\n");
  }

  private static void writeFrame(AFrame fr, FileWriter f) throws IOException {
    for (int i = 0; i < 8; i++) {
      writeLayer(fr.getLayer(i), f);
    }
    f.write(Integer.toString( (fr.getTime() & 0xff) + 0x100, 16).substring(1) + "\n");
  }

  private static void writeLayer(byte[] l, FileWriter f) throws IOException {
    String hex = "";
    for (int i = 0; i < l.length; i++) {
      hex += Integer.toString( (l[i] & 0xff) + 0x100, 16).substring(1);
    }
    hex += "\n";

    f.write(hex);
  }
}

class AFrame {
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

  byte[] getLayer(int i) {
    return Arrays.copyOfRange(data, (i * 8), (i * 8) + 8);
  }
}

class Animation {
  private ArrayList<AFrame> frames = new ArrayList<AFrame>();
  private int lastFrameIndex = 0;
  private String name = "Animation";

  String getName() {
    return name;
  }

  void setName(String s) {
    name = s;
  }

  AFrame get(int i) {
    try {
      return frames.get(i);
    } catch (IndexOutOfBoundsException e) {
      System.out.println(e.toString());
      return null;
    }
  }

  void set(AFrame f, int i) {
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
      frames.add(i, new AFrame());
      lastFrameIndex++;
    } catch (IndexOutOfBoundsException e)  {
      System.out.println(e.toString());
    }
  }

  int size() {
    return frames.size();
  }
}
