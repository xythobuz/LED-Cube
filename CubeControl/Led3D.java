/*
 * Led3D.java
 *
 *
 * Copyright 2011 Thomas Buck <xythobuz@me.com>
 * Copyright 2011 Max Nuding <max.nuding@gmail.com>
 * Copyright 2011 Felix BÃ¤der <baeder.felix@gmail.com>
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
import java.awt.Toolkit;
import com.sun.j3d.utils.picking.*;
import java.awt.event.*;
/**
 * This class is responsible for displaying the 3D View of our Cube.
 * 
 * @author Thomas Buck
 * @author Max Nuding
 * @author Felix Bäder
 * @version 1.0
 */
public class Led3D extends MouseAdapter {
	private Canvas3D canvas = null;
	private PickCanvas pickCanvas = null;
	private SimpleUniverse universe = null;
	private BranchGroup group = null;
	private BranchGroup group2 = null;
	private Transform3D trans3D = null;
	private TransformGroup transGroup = null;
	private TransformGroup feetGroup = null;
	private Matrix4d mat = null;
	private Matrix4d fullScreenMat = null;
	private Frame parentFrame = null;
	private boolean inFullscreen = false;
	private boolean showLegs = true;

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
	private Background background;
	private	Appearance feetApp = new Appearance();

	
	public void toggleLegs(){
		if(showLegs){
			group2.detach();
		} else {
			universe.addBranchGraph(group2);
			Transform3D t = new Transform3D();
			transGroup.getTransform(t);
			feetGroup.setTransform(t);

		}
		showLegs = !showLegs;
	}

	/**
	 * @param canv The Canvas3D we render our cube in
	 */
	public Led3D(Canvas3D canv, Frame f) {

		canvas = canv;
		parentFrame = f;
		group = new BranchGroup();
		group2 = new BranchGroup();
		// Position viewer, so we are looking at object
		trans3D = new Transform3D();
		mat = new Matrix4d();
		mat.setRow(0, 0.7597, -0.0204, 0.64926, 0.56);
		mat.setRow(1, -0.08, -0.995, 0.061, 0.02);
		mat.setRow(2, 0.64473, -0.09786, -0.758, -14.68);
		mat.setRow(3, 0.0, 0.0, 0.0, 1.0);

		fullScreenMat = new Matrix4d();
		fullScreenMat.setRow(0, 0.7597, -0.0204, 0.64926, 0.68);
		fullScreenMat.setRow(1, -0.08, -0.995, 0.061, 0.7);
		fullScreenMat.setRow(2, 0.64473, -0.09786, -0.758, -22.88);
		fullScreenMat.setRow(3, 0.0, 0.0, 0.0, 1.0);


		trans3D.set(mat);

		transGroup = new TransformGroup(trans3D);
		transGroup.setCapability(TransformGroup.ALLOW_TRANSFORM_READ);
		transGroup.setCapability(TransformGroup.ALLOW_TRANSFORM_WRITE);
		feetGroup = new TransformGroup(trans3D);
		feetGroup.setCapability(TransformGroup.ALLOW_TRANSFORM_READ);
		feetGroup.setCapability(TransformGroup.ALLOW_TRANSFORM_WRITE);
		ViewingPlatform viewingPlatform = new ViewingPlatform();
		Viewer viewer = new Viewer(canvas);
		universe = new SimpleUniverse(viewingPlatform, viewer);

		BoundingBox boundBox = new BoundingBox(new Point3d(-5.0, -5.0, -5.0),
				new Point3d(13.0, 13.0, 13.0));
		// roration with left mouse button
		MouseRotate behaviour = new MouseRotate(transGroup);
		behaviour.setSchedulingBounds(boundBox);
		transGroup.addChild(behaviour);

		MouseRotate feetBehaviour = new MouseRotate(feetGroup);
		feetBehaviour.setSchedulingBounds(boundBox);
		feetGroup.addChild(feetBehaviour);

		// zoom with middle mouse button
		MouseZoom beh2 = new MouseZoom(transGroup);
		beh2.setSchedulingBounds(boundBox);
		transGroup.addChild(beh2);

		MouseZoom feetBeh2 = new MouseZoom(feetGroup);
		feetBeh2.setSchedulingBounds(boundBox);
		feetGroup.addChild(feetBeh2);

		// move with right mouse button
		MouseTranslate beh3 = new MouseTranslate(transGroup);
		beh3.setSchedulingBounds(boundBox);
		transGroup.addChild(beh3);

		MouseTranslate feetBeh3 = new MouseTranslate(feetGroup);
		feetBeh3.setSchedulingBounds(boundBox);
		feetGroup.addChild(feetBeh3);

		
		group.setCapability(BranchGroup.ALLOW_CHILDREN_READ);
		group.setCapability(BranchGroup.ALLOW_CHILDREN_WRITE);
		group.setCapability(BranchGroup.ALLOW_DETACH);

		group2.setCapability(BranchGroup.ALLOW_CHILDREN_READ);
		group2.setCapability(BranchGroup.ALLOW_CHILDREN_WRITE);
		group2.setCapability(BranchGroup.ALLOW_DETACH);

		background = createBackground();
		group.addChild(background);

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
					Vector3f vector = new Vector3f(x - 3.5f, y -3.5f, z-3.5f);
					transform.setTranslation(vector);
					tg.setTransform(transform);
					tg.addChild(leds[x][y][z]);
					transGroup.addChild(tg);

					drawLedFeetVertical((double) x - 3.5, y - 3, (double) z-3.5, 0.9f, 0.01f);
					if (x < 7)
						drawLedFeetHorizontal(x - 3, (double) y - 3.5, (double) z - 3.5, 0.9f, 0.01f, 0);
				}
			}
			// 8 times, use x as y
			for(int i = 0; i > -8; i--){
				drawLedFeetHorizontal(i+3.5, (double) x-3.5, 0, 7.0f, 0.02f, 90);
			}
		}

		drawLedFeetVertical(5, 5, -5, 50, 0.02f); //
		drawLedFeetHorizontal(5, 5, -5, 50, 0.02f, 0); // x, y, and z axis
		drawLedFeetHorizontal(5, 5, -5, 50, 0.02f, 90);

		Appearance c = new Appearance();
		c.setMaterial(redMat);
		c.setColoringAttributes(redColor);


		Sphere center = new Sphere(0.05f, Sphere.ENABLE_APPEARANCE_MODIFY, c);
		TransformGroup tg = new TransformGroup();
		Transform3D transform = new Transform3D();
		Vector3f vector = new Vector3f(5, 5, -5);
		transform.setTranslation(vector);
		tg.setTransform(transform);
		tg.addChild(center);
		feetGroup.addChild(tg);	


		// Add an ambient light
		Color3f light2Color = new Color3f(1.0f, 1.0f, 1.0f);
		AmbientLight light2 = new AmbientLight(light2Color);
		BoundingSphere bounds = new BoundingSphere(new Point3d(0.0, 0.0, 0.0),
				100.0);
		light2.setInfluencingBounds(bounds);
		light2.setEnable(true);
		transGroup.addChild(light2);
		group.addChild(transGroup);
		group2.addChild(feetGroup);
		universe.addBranchGraph(group); // Add group to universe
		universe.addBranchGraph(group2);

		// Mouse-Selectable objects
		pickCanvas = new PickCanvas(canvas, group);
		pickCanvas.setMode(PickCanvas.BOUNDS);
		canvas.addMouseListener(this);
	}

	/**
	 * Listen for mouse events so the user can click on LEDs.
	 * @param e MouseEvent generated by the user
	 */
	public void mouseClicked(MouseEvent e) {
		pickCanvas.setShapeLocation(e);
		PickResult result = pickCanvas.pickClosest();
		if (result != null) {
			// User clicked near something
			Primitive p = (Primitive)result.getNode(PickResult.PRIMITIVE);
			if (p != null) {
				// p is now a Primitive that the user clicked
				if (p.getClass().getName().equals("com.sun.j3d.utils.geometry.Sphere")) {
					// p is a Cylinder. Our LEDs are Spheres, so p.equals(led[x][y][z]) does not find anything...
					for (int x = 0; x < 8; x++) {
						for (int y = 0; y < 8; y++) {
							for (int z = 0; z < 8; z++) {
								if (p.equals(leds[x][y][z])) {
									// Clicked led found!
									System.out.println("Clicked LED found: " + x + " " + y + " " + z);
									parentFrame.toggleLED(x, y, z);

									x = 8;
									y = 8;
									z = 8;
								}
							}
						}
					}
				} else {
					System.out.println("Clicked, but not a sphere. Clicked object: " + p.getClass().getName());
					if(p.getClass().getName().equals("com.sun.j3d.utils.geometry.Cylinder")){

					}
				}
			}
		} else {
			System.out.println("Clicked, but hit nothing");
		}
	}

	private void drawLedFeetVertical(double x, double y, double z,
			float length, float rad) {
		// draw Feet going down
		
		feetApp.setMaterial(whiteMat);
		feetApp.setColoringAttributes(whiteColor);
		Cylinder c = new Cylinder(rad, length, feetApp);

		TransformGroup tg = new TransformGroup();
		Transform3D transform = new Transform3D();
		Vector3d vector = new Vector3d(x, y, z);
		transform.setTranslation(vector);
		tg.setTransform(transform);
		tg.addChild(c);

		feetGroup.addChild(tg);
	}

	private void drawLedFeetHorizontal(double x, double y, double z,
			float length, float rad, int deg) {
		// draw Feet going down
	
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

		feetGroup.addChild(tg);
	}

	/**
	 * Rotate the cube back to its initial position.
	 */
	public void resetView() {
		Matrix4d mat = new Matrix4d();
		
		if(inFullscreen){
			mat.setRow(0, 0.7597, -0.0204, 0.64926, 0.68);
			mat.setRow(1, -0.08, -0.995, 0.061, 0.7);
			mat.setRow(2, 0.64473, -0.09786, -0.758, -22.88);
			mat.setRow(3, 0.0, 0.0, 0.0, 1.0);	
		} else {
			mat.setRow(0, 0.7597, -0.0204, 0.64926, 0.56);
			mat.setRow(1, -0.08, -0.995, 0.061, 0.02);
			mat.setRow(2, 0.64473, -0.09786, -0.758, -14.68);
			mat.setRow(3, 0.0, 0.0, 0.0, 1.0);
		}
		trans3D.set(mat);
		transGroup.setTransform(trans3D);
		feetGroup.setTransform(trans3D);
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
		Background bg = new Background(1.0f, 1.0f, 1.0f);
		int radius = canvas.getWidth();
		bg.setApplicationBounds(new BoundingSphere(new Point3d(0.0, 0.0, 0.0), radius));
		return bg;
	}

	/**
	 * Create new background to reflect changed Canvas size.
	 */
	private void toggleFullscreen() {
		group.detach();
		if(group.indexOfChild(background) != -1){
			group.removeChild(background);
		}
		background = createBackground();
		group.addChild(background);
		universe.addBranchGraph(group);
		inFullscreen = !inFullscreen;
	}
	
	/**
	 * Create new background and adjust view.
	 */
	public void enterFullscreen() {
		toggleFullscreen();
		trans3D.set(fullScreenMat);
		transGroup.setTransform(trans3D);
		feetGroup.setTransform(trans3D);
		resetView(); //This is important. For some reason some legs are missing when entering fullscreen mode. Calling this function solves the problem.
	}
	
	/**
	 * Create new background and adjust view.
	 */
	public void leaveFullscreen() {
		toggleFullscreen();
		trans3D.set(mat);
		transGroup.setTransform(trans3D);
		feetGroup.setTransform(trans3D);
	}
}
