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
import com.sun.j3d.utils.image.TextureLoader;

/**
 * This class is responsible for displaying the 3D View of our Cube.
 * 
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
	private TransformGroup transGroup = null;

	private Sphere[][][] leds = new Sphere[8][8][8];
	private static ColoringAttributes redColor = new ColoringAttributes(
			new Color3f(1.0f, 0.0f, 0.0f), ColoringAttributes.FASTEST);
	private static ColoringAttributes whiteColor = new ColoringAttributes(
			new Color3f(0.2f, 0.2f, 0.2f), ColoringAttributes.FASTEST);
	private static Material whiteMat = new Material(new Color3f(0.2f, 0.2f,
			0.2f), new Color3f(0.0f, 0.0f, 0.0f),
			new Color3f(0.2f, 0.2f, 0.2f), new Color3f(0.2f, 0.2f, 0.2f), 64.0f);
	private static Material redMat = new Material(
			new Color3f(1.0f, 0.0f, 0.0f), new Color3f(1.0f, 0.0f, 0.0f),
			new Color3f(1.0f, 0.0f, 0.0f), new Color3f(1.0f, 0.0f, 0.0f), 64.0f);

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
		transGroup.setCapability(TransformGroup.ALLOW_TRANSFORM_READ);
		transGroup.setCapability(TransformGroup.ALLOW_TRANSFORM_WRITE);
		ViewingPlatform viewingPlatform = new ViewingPlatform();
		Viewer viewer = new Viewer(canvas);
		universe = new SimpleUniverse(viewingPlatform, viewer);

		BoundingBox boundBox = new BoundingBox(new Point3d(-5.0, -5.0, -5.0),
				new Point3d(13.0, 13.0, 13.0));
		// roration with left mouse button
		MouseRotate behaviour = new MouseRotate(transGroup);
		behaviour.setSchedulingBounds(boundBox);
		transGroup.addChild(behaviour);

		// zoom with middle mouse button
		MouseZoom beh2 = new MouseZoom(transGroup);
		beh2.setSchedulingBounds(boundBox);
		transGroup.addChild(beh2);

		// move with right mouse button
		MouseTranslate beh3 = new MouseTranslate(transGroup);
		beh3.setSchedulingBounds(boundBox);
		transGroup.addChild(beh3);

		group.addChild(createBackground());

		// Add all our led sphares to the universe
		for (int x = 0; x < 8; x++) {
			for (int y = 0; y < 8; y++) {
				for (int z = 0; z < 8; z++) {
					Appearance a = new Appearance();
					a.setMaterial(whiteMat);
					a.setColoringAttributes(whiteColor);

					leds[x][y][z] = new Sphere(0.08f,
							Sphere.ENABLE_APPEARANCE_MODIFY, a);

					TransformGroup tg = new TransformGroup();
					Transform3D transform = new Transform3D();
					Vector3f vector = new Vector3f(x, y, z);
					transform.setTranslation(vector);
					tg.setTransform(transform);
					tg.addChild(leds[x][y][z]);
					transGroup.addChild(tg);

					drawLedFeetVertical((double) x, y + 0.5, (double) z, 0.9f,
							0.01f);
					if (x < 7)
						drawLedFeetHorizontal(x + 0.5, (double) y, (double) z,
								0.9f, 0.01f, 0);
				}
			}
			// 8 times, use x as y
			drawLedFeetHorizontal(0.5, (double) x, 3.5, 7.0f, 0.02f, 90);
			drawLedFeetHorizontal(6.5, (double) x, 3.5, 7.0f, 0.02f, 90);
			drawLedFeetHorizontal(3.5, (double) x, 3.5, 7.0f, 0.02f, 90);
		}

		// Add an ambient light
		Color3f light2Color = new Color3f(1.0f, 1.0f, 1.0f);
		AmbientLight light2 = new AmbientLight(light2Color);
		BoundingSphere bounds = new BoundingSphere(new Point3d(0.0, 0.0, 0.0),
				100.0);
		light2.setInfluencingBounds(bounds);
		light2.setEnable(true);
		transGroup.addChild(light2);
		group.addChild(transGroup);
		universe.addBranchGraph(group); // Add group to universe
	}

	private void drawLedFeetVertical(double x, double y, double z,
			float length, float rad) {
		// draw Feet going down
		Appearance feetApp = new Appearance();
		feetApp.setMaterial(whiteMat);
		feetApp.setColoringAttributes(whiteColor);
		Cylinder c = new Cylinder(rad, length, feetApp);

		TransformGroup tg = new TransformGroup();
		Transform3D transform = new Transform3D();
		Vector3d vector = new Vector3d(x, y, z);
		transform.setTranslation(vector);
		tg.setTransform(transform);
		tg.addChild(c);

		transGroup.addChild(tg);
	}

	private void drawLedFeetHorizontal(double x, double y, double z,
			float length, float rad, int deg) {
		// draw Feet going down
		Appearance feetApp = new Appearance();
		feetApp.setMaterial(whiteMat);
		feetApp.setColoringAttributes(whiteColor);
		Cylinder c = new Cylinder(rad, length, feetApp);

		TransformGroup tg = new TransformGroup();
		Transform3D transform = new Transform3D();
		Vector3d vector = new Vector3d(x, y, z);
		transform.rotZ(Math.toRadians(90));
		if (deg != 0)
			transform.rotX(Math.toRadians(deg));
		transform.setTranslation(vector);
		tg.setTransform(transform);
		tg.addChild(c);

		transGroup.addChild(tg);
	}

	/**
	 * Rotate the cube back to its initial position.
	 */
	public void resetView() {
		Matrix4d mat = new Matrix4d();
		mat.setRow(0, 0.744, 0.0237, -0.66756, -0.34);
		mat.setRow(1, 0.136, -0.9837, 0.117, 3.24);
		mat.setRow(2, -0.6536, -0.1785, -0.735, -8.32);
		mat.setRow(3, 0.0, 0.0, 0.0, 1.0);
		trans3D.set(mat);
		transGroup.setTransform(trans3D);
	}

	/**
	 * Prints the translation matrix that is changed by moving/rotating the 3D
	 * Cube with your mouse.
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
	 * 
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

	// create nice background
	private Background createBackground() {
		ImageComponent2D image = new TextureLoader(getClass().getResource(
				"bg.png"), null).getImage();
		Background bg = new Background(image);
		bg.setApplicationBounds(new BoundingSphere(new Point3d(0.0, 0.0, 0.0),
				100.0));
		return bg;
	}
}
