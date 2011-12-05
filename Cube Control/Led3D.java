/*
* Led3D.java
*
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
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with LED-Cube. If not, see <http://www.gnu.org/licenses/>.
*/

import com.sun.j3d.utils.universe.*;
import com.sun.j3d.utils.geometry.*;
import javax.media.j3d.*;
import javax.vecmath.*;
import com.sun.j3d.utils.behaviors.mouse.*;

/**
 * This class is responsible for displaying the 3D View of our Cube.
 * @author Thomas Buck
 * @author Max Nuding
 * @author Felix Bäder
 * @version 1.0
 */

public class Led3D {
	private Canvas3D canvas = null;
	private SimpleUniverse universe = null;
	private BranchGroup group = null;
	private Transform3D trans3D = null;
	private BranchGroup inBetween = null;
	private TransformGroup transGroup = null;

	private Sphere[][][] leds = new Sphere[8][8][8];
	private static ColoringAttributes redColor = new ColoringAttributes(new Color3f(1.0f, 0.0f, 0.0f), ColoringAttributes.FASTEST);
	private static ColoringAttributes whiteColor = new ColoringAttributes(new Color3f(0.2f, 0.2f, 0.2f), ColoringAttributes.FASTEST);
	private static Material whiteMat = new Material(new Color3f(0.2f, 0.2f, 0.2f), new Color3f(0.0f, 0.0f, 0.0f), new Color3f(0.2f, 0.2f, 0.2f), new Color3f(0.2f, 0.2f, 0.2f), 64.0f);
	private static Material redMat = new Material(new Color3f(1.0f, 0.0f, 0.0f), new Color3f(1.0f, 0.0f, 0.0f), new Color3f(1.0f, 0.0f, 0.0f), new Color3f(1.0f, 0.0f, 0.0f), 64.0f);

  /**
   * @param canv The Canvas3D we render our cube in
   */
  public Led3D(Canvas3D canv) {

    canvas = canv;
    group = new BranchGroup();
    // Position viewer, so we are looking at object
    trans3D = new Transform3D();
	Matrix4d mat = new Matrix4d();
	mat.setRow(0, 0.744, 0.0237, -0.66756, -0.34);
	mat.setRow(1, 0.136, -0.9837, 0.117, 3.24);
	mat.setRow(2, -0.6536, -0.1785, -0.735, -8.32);
	mat.setRow(3, 0.0, 0.0, 0.0, 1.0);
	trans3D.set(mat);

	transGroup = new TransformGroup(trans3D);
    ViewingPlatform viewingPlatform = new ViewingPlatform();
    transGroup.setCapability(TransformGroup.ALLOW_TRANSFORM_READ);
    transGroup.setCapability(TransformGroup.ALLOW_TRANSFORM_WRITE);
    transGroup.setCapability(TransformGroup.ALLOW_CHILDREN_EXTEND);
	transGroup.setCapability(TransformGroup.ALLOW_CHILDREN_WRITE);
	transGroup.setCapability(TransformGroup.ALLOW_CHILDREN_READ);
    Viewer viewer = new Viewer(canvas);
    universe = new SimpleUniverse(viewingPlatform, viewer);
    group.addChild(transGroup);
	universe.addBranchGraph(group); // Add group to universe

    BoundingBox boundBox = new BoundingBox(new Point3d(-5.0, -5.0, -5.0), new Point3d(13.0, 13.0, 13.0));
    // roration with left mouse button
    MouseRotate behaviour = new MouseRotate(transGroup);
    BranchGroup inBetween = new BranchGroup();
    inBetween.setCapability(BranchGroup.ALLOW_CHILDREN_EXTEND);
	inBetween.setCapability(BranchGroup.ALLOW_CHILDREN_WRITE);
	inBetween.setCapability(BranchGroup.ALLOW_CHILDREN_READ);
    inBetween.addChild(behaviour);
    transGroup.addChild(inBetween);
    behaviour.setSchedulingBounds(boundBox);

    // zoom with middle mouse button
    MouseZoom beh2 = new MouseZoom(transGroup);
    BranchGroup brM2 = new BranchGroup();
    brM2.setCapability(BranchGroup.ALLOW_CHILDREN_EXTEND);
	brM2.setCapability(BranchGroup.ALLOW_CHILDREN_WRITE);
	brM2.setCapability(BranchGroup.ALLOW_CHILDREN_READ);
    brM2.addChild(beh2);
    inBetween.addChild(brM2);
    beh2.setSchedulingBounds(boundBox);

    // move with right mouse button
    MouseTranslate beh3 = new MouseTranslate(transGroup);
    BranchGroup brM3 = new BranchGroup();
    brM3.setCapability(BranchGroup.ALLOW_CHILDREN_EXTEND);
	brM3.setCapability(BranchGroup.ALLOW_CHILDREN_WRITE);
	brM3.setCapability(BranchGroup.ALLOW_CHILDREN_READ);
    brM3.addChild(beh3);
    inBetween.addChild(brM3);
    beh3.setSchedulingBounds(boundBox);

    // Add all our led sphares to the universe
    for (int x = 0; x < 8; x++) {
      for (int y = 0; y < 8; y++) {
        for (int z = 0; z < 8; z++) {
          leds[x][y][z] = new Sphere(0.05f);

          Appearance a = new Appearance();
          a.setMaterial(whiteMat);
		  a.setColoringAttributes(whiteColor);
          leds[x][y][z].setAppearance(a);
		  leds[x][y][z].getShape().setCapability(Shape3D.ALLOW_APPEARANCE_WRITE);

          TransformGroup tg = new TransformGroup();
          tg.setCapability(TransformGroup.ALLOW_CHILDREN_EXTEND);
		  tg.setCapability(TransformGroup.ALLOW_CHILDREN_WRITE);
		  tg.setCapability(TransformGroup.ALLOW_CHILDREN_READ);
          Transform3D transform = new Transform3D();
          Vector3f vector = new Vector3f(x, y, z);
          transform.setTranslation(vector);
          tg.setTransform(transform);
          tg.addChild(leds[x][y][z]);

          BranchGroup allTheseGroupsScareMe = new BranchGroup();
		  allTheseGroupsScareMe.setCapability(BranchGroup.ALLOW_CHILDREN_EXTEND);
		  allTheseGroupsScareMe.setCapability(BranchGroup.ALLOW_CHILDREN_READ);
		  allTheseGroupsScareMe.setCapability(BranchGroup.ALLOW_CHILDREN_WRITE);
          allTheseGroupsScareMe.addChild(tg);
          inBetween.addChild(allTheseGroupsScareMe);
        }
      }
    }

    // Add an ambient light
    Color3f light2Color = new Color3f(1.0f, 1.0f, 1.0f);
    AmbientLight light2 = new AmbientLight(light2Color);
    BoundingSphere bounds = new BoundingSphere(new Point3d(0.0, 0.0, 0.0), 100.0);
    light2.setInfluencingBounds(bounds);
    BranchGroup fffuuuuu = new BranchGroup();
    light2.setEnable(true);
    fffuuuuu.addChild(light2);
    inBetween.addChild(fffuuuuu);
  }

	/**
	 * Prints the translation matrix that is changed by moving/rotating the 3D Cube with your mouse.
	 */
  	public void printTranslationData() {
		Matrix4d mat = new Matrix4d();
		Transform3D t = new Transform3D();
		transGroup.getTransform(t);
		t.get(mat);
		String s = mat.toString();
		System.out.println(s.replaceAll(", ", "\t"));
	}

	/**
	 * Sets the data that is displayed by the LEDs
	 * @param data 64 byte array with the data (8 bits/LEDs per byte)
	 */
	public void setData(short[] data) {
		for (int y = 0; y < 8; y++) {
			for (int z = 0; z < 8; z++) {
				for (int x = 0; x < 8; x++) {
					Appearance a = new Appearance();
					if ((data[y + (z * 8)] & (1 << x)) != 0) {
						// Activate led
						a.setColoringAttributes(redColor);
						a.setMaterial(redMat);
					} else {
						// Deactivate led
						a.setColoringAttributes(whiteColor);
						a.setMaterial(whiteMat);
					}
					leds[x][y][z].setAppearance(a);
				}
			}
		}
	}
}
