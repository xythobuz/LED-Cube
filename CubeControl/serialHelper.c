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
#include "helper/winSerial.c"
#else
#include "helper/unixSerial.c"
#endif

JNIEXPORT jstring JNICALL Java_HelperUtility_getPorts(JNIEnv *env, jclass class) {
	char **ports = getSerialPorts();
	char *string = NULL;
	int length = 0, leng2 = 0, lengthabs = 0;

	printf("JNI: Got serial ports...\n");

	// Count how much memory we need for string of all ports, with \n in between
	while (ports[length] != NULL) {
		printf("JNI: Startin count...\n");
		while (ports[length][leng2] != '\0') {
			leng2++;
		}
		printf("JNI: Counted %s\n", ports[length]);
		lengthabs += leng2;
		leng2 = 0;
		length++;
	}
	length += lengthabs;

	printf("JNI: Counted serial ports...\n");

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

	jstring ret = (*env)->NewStringUTF(env, string);
	return ret;
}

JNIEXPORT jshortArray JNICALL Java_HelperUtility_readData(JNIEnv *env, jclass class, jint length) {
	return NULL;
}

JNIEXPORT void JNICALL Java_HelperUtility_writeData(JNIEnv *env, jclass class, jshortArray data, jint length) {
	return;
}
