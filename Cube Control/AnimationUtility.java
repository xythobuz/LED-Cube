/*
 * AnimationUtility.java
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

import java.io.FileWriter;
import java.io.File;
import java.util.Scanner;
import java.io.IOException;
import java.util.ArrayList;

/**
 * A helper class that loads animations from a file or saves them to one.
 * @author Thomas Buck
 * @author Max Nuding
 * @author Felix Bäder
 * @version 1.0
 */

public class AnimationUtility {
  private static String lastError = null;

  /**
   * Read a file, return ArrayList with all animations in the file.
   * @param path Path of file
   * @return Populated ArrayList
   * @throws Excpetion When something goes wrong with the Scanner...
   */
  public static ArrayList<Animation> readFile(String path) throws Exception {
    Scanner sc = new Scanner(new File(path));
  ArrayList<Animation> animations = new ArrayList<Animation>();

  do {
  Animation tmp = readAnimation(sc);
  if (tmp == null) {
    return animations;
  }
  if (sc.hasNextLine()) {
    sc.nextLine();
  }
    animations.add(tmp);
  } while (sc.hasNextLine());

  return animations;
  }

  /**
   * Write a file with all Animations of an ArrayList
   * @param path Path to write to
   * @param animations ArrayList with all animations to be saved
   * @see AnimationUtility#getLastError() getLastError()
   */
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
        writeAnimation(animations.get(i), output, (i == (animations.size() - 1)));
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

  /**
   * Get the last error that occured while writing
   * @return Text of the exception that occured
   * @see AnimationUtility#writeFile(String, ArrayList) writeFile()
   */
  public static String getLastError() {
    String tmp = lastError;
    lastError = null;
    return tmp;
  }

  private static Animation readAnimation(Scanner sc) {
  Animation anim = new Animation();
  AFrame f = null;
  int index = 0;
  String tmpSize = sc.nextLine().replaceAll("\\n", "");
  if (tmpSize.equals("")) {
    return null;
  }
  Integer tmpSizeAgain = new Integer(tmpSize);
  int size = tmpSizeAgain.intValue();
  anim.setName(sc.nextLine());
  while (size > 0) {
    f = readFrame(sc, index);
    anim.add(index, f);
    index++;
    size--;
  }
  return anim;
  }

  private static AFrame readFrame(Scanner sc, int index) {
    AFrame frame = new AFrame();
    frame.setName(sc.nextLine());
    short[] d = {};
    for (int i = 0; i < 8; i++) {
      short[] data = hexConvert(sc.nextLine());
      d = concat(d, data);
    }
  
    frame.setData(d);
    d = hexConvert(sc.nextLine());
    frame.setTime(d[0]);
    return frame;
  }
  
  /*private static short[] invert(short[] a){
    short[] tmp = new short[a.length];
    int j = 0;
    for(int i = a.length-1; i >= 0; i--){
      tmp[j] = a[i];
      j++;
    }
    return tmp;
  }*/

  private static short[] concat(short[] a, short[] b) {
  short[] c = new short[a.length + b.length];
  System.arraycopy(a, 0, c, 0, a.length);
  System.arraycopy(b, 0, c, a.length, b.length);
  return c;
  }

  private static short[] hexConvert(String hex) {
    hex = hex.replaceAll("\\n", "");

      short[] tmp = new short[hex.length()/2];
      for (int i = 0; i < hex.length(); i=i+2){
        char[] tmpString = new char[2];
        tmpString[0] = hex.charAt(i);
        tmpString[1] = hex.charAt(i+1);
        String tmpS = String.copyValueOf(tmpString);
        if(i == 0){
          tmp[0] = Short.parseShort(tmpS, 16);
        } else {
          tmp[i/2] = Short.parseShort(tmpS, 16);
        }

      }
      return tmp;


  }

  private static void writeAnimation(Animation anim, FileWriter f, boolean last) throws IOException {
    f.write(anim.size() + "\n");
  f.write(anim.getName() + "\n");
    for (int i = 0; i < anim.size(); i++) {
      writeFrame(anim.get(i), f);
    }
    if (!last) {
    f.write("\n");
  }
  }

  private static void writeFrame(AFrame fr, FileWriter f) throws IOException {
    f.write(fr.getName() + "\n");
  for (int i = 0; i < 8; i++) {
      writeLayer(fr.getLayer(i), f);
    }
    f.write(Integer.toString( (fr.getTime() & 0xff) + 0x100, 16).substring(1) + "\n");
  }

  private static void writeLayer(short[] l, FileWriter f) throws IOException {
    String hex = "";
    for (int i = 0; i < l.length; i++) {
      hex += Integer.toString( (l[i] & 0xff) + 0x100, 16).substring(1);
    }
    hex += "\n";

    f.write(hex);
  }
}
