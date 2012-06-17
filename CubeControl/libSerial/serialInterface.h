#include <jni.h>
/* Header for class HelperUtility */

#ifdef winHelper
#ifdef BUILDINGDLL
#define DLL __declspec(dllexport)
#else
#define DLL __declspec(dllimport)
#endif
#else
#define DLL
#endif

#ifndef _Included_HelperUtility
#define _Included_HelperUtility
#ifdef __cplusplus
extern "C" {
#endif
/*
 * Class:     HelperUtility
 * Method:    getThePorts
 * Signature: (Ljava/lang/String;)Ljava/lang/String;
 */
JNIEXPORT jstring DLL JNICALL Java_HelperUtility_getThePorts
  (JNIEnv *, jclass, jstring);

/*
 * Class:     HelperUtility
 * Method:    openPortNative
 * Signature: (Ljava/lang/String;)Z
 */
JNIEXPORT jboolean DLL JNICALL Java_HelperUtility_openPortNative
  (JNIEnv *, jclass, jstring);

/*
 * Class:     HelperUtility
 * Method:    closePortNative
 * Signature: ()V
 */
JNIEXPORT void DLL JNICALL Java_HelperUtility_closePortNative
  (JNIEnv *, jclass);

/*
 * Class:     HelperUtility
 * Method:    readDataNative
 * Signature: (I)[S
 */
JNIEXPORT jshortArray DLL JNICALL Java_HelperUtility_readDataNative
  (JNIEnv *, jclass, jint);

/*
 * Class:     HelperUtility
 * Method:    writeDataNative
 * Signature: ([SI)V
 */
JNIEXPORT jboolean DLL JNICALL Java_HelperUtility_writeDataNative
  (JNIEnv *, jclass, jshortArray, jint);

#ifdef __cplusplus
}
#endif
#endif
