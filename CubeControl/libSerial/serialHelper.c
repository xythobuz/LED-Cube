/*
 * unixHelper.c
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
#include <stdlib.h>
#include <stdio.h>
#include <jni.h>
#include "serialInterface.h"

#ifdef winHelper
#include "winSerial.c"
#else
#include "unixSerial.c"
#endif

JNIEXPORT jstring JNICALL Java_HelperUtility_getThePorts(JNIEnv *env, jclass class, jstring s) {
	jboolean tmp;
	char **ports = getSerialPorts((*env)->GetStringUTFChars(env, s, &tmp));
	char *string = NULL;
	int length = 0, leng2 = 0, lengthabs = 0;

	// printf("JNI: Got serial ports...\n");

	// Count how much memory we need for string of all ports, with \n in between
	while (ports[length] != NULL) {
		// printf("JNI: Starting count... (%d at %p)\n", length, (void *)ports[length]);

		while (ports[length][leng2] != '\0') {
			leng2++;
		}
		// printf("JNI: Counted %s\n", ports[length]);
		lengthabs += leng2;
		leng2 = 0;
		length++;
	}
	length += lengthabs;

	// printf("JNI: Counted serial ports...\n");

	string = (char *)malloc((length + 1) * sizeof(char));
	if (string == NULL) {
		printf("JNI: Not enough memory!\n");
		return (*env)->NewStringUTF(env, NULL);
	}

	length = 0;
	lengthabs = 0;
	while (ports[length] != NULL) {
		leng2 = 0;
		while (ports[length][leng2] != '\0') {
			string[lengthabs++] = ports[length][leng2++];
		}
		string[lengthabs++] = '\n';
		length++;
	}
	string[lengthabs] = '\0';

	// printf("JNI: %s\n", string);

	jstring ret = (*env)->NewStringUTF(env, string);
	return ret;
}

JNIEXPORT jshortArray JNICALL Java_HelperUtility_readDataNative(JNIEnv *env, jclass class, jint length) {
	jshortArray arr = (*env)->NewShortArray(env, length);
	int toBeRead = 0, read, i, error = 0;
	char *data = (char *)malloc(length * sizeof(char));
	jshort *data2 = (jshort *)malloc(length * sizeof(jshort));

	while (length > 0) {
		read = serialRead(data + toBeRead, length);
		if (read == -1) {
			error++;
			if (error > 10) {
				return (*env)->NewShortArray(env, 0);
			}
		} else {
			toBeRead += read;
			length -= read;
		}
	}

	for (i = 0; i < (*env)->GetArrayLength(env, arr); i++) {
		data2[i] = data[i];
	}
	(*env)->SetShortArrayRegion(env, arr, 0, (*env)->GetArrayLength(env, arr), data2);
	return arr;
}

JNIEXPORT jboolean JNICALL Java_HelperUtility_writeDataNative(JNIEnv *env, jclass class, jshortArray data, jint length) {
	int toWrite = length, written = 0, now, i, error = 0;
	char *dat = (char *)malloc(length * sizeof(char));
	jshort *dat2 = (jshort *)malloc(length * sizeof(jshort));

	// Get unwritten data from argument, place in dat2
	// move from dat2 into dat1
	// write dat1
	// repeat

	while (toWrite > 0) {
		(*env)->GetShortArrayRegion(env, data, written, length, dat2); // Unwritten part of data in dat2
		for (i = 0; i < (length - written); i++) {
			dat[i] = dat2[i];
		}
		now = serialWrite(dat, toWrite);
		if (now == -1) {
			error++;
			if (error > 10) {
				return JNI_FALSE;
			}
		} else {
			written += now;
			toWrite -= now;
		}
	}

	return JNI_TRUE;
}

JNIEXPORT void JNICALL Java_HelperUtility_closePortNative(JNIEnv * env, jclass class) {
	serialClose();
}

JNIEXPORT jboolean JNICALL Java_HelperUtility_openPortNative(JNIEnv *env, jclass class, jstring name) {
	jboolean isCopy;
	const char *path = (*env)->GetStringUTFChars(env, name, &isCopy);
	int ret = serialOpen((char *)path);
	if (ret == 0) {
		return JNI_TRUE;
	} else {
		return JNI_FALSE;
	}
}
