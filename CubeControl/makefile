INJAR = *.class LEDoff.png LEDon.png splash.png bg.png
# Path to jni.h
ifdef SystemRoot
RM = del
INJAR += Serial.dll
PLATFORM = Win
else
ifdef SYSTEMROOT
# Looks like cygwin or mingw shell
RM = rm -rf
INJAR += Serial.dll
PLATFORM = Win
else
RM = rm -f
UNAME := $(shell uname -s)
ifeq ($(UNAME),Darwin)
INJAR += libSerial.jnilib
PLATFORM = Mac
else
INJAR += libSerial.so
PLATFORM = Linux
endif
endif
endif

# All java files to be compiled
# List so it works as target
JAVAFILES = HelperUtility.java AnimationUtility.java Animation.java AFrame.java cubeWorker.java layerEditFrame.java Led3D.java Frame.java SerialReadThread.java SerialWriteThread.java SerialHelper.java

# --------------------------------------

all: CubeControl.jar

doc: doc/index.html

CubeControl.jar: HelperUtility.class manifest.txt libSerial
	jar -cmf manifest.txt "CubeControl$(PLATFORM).jar" $(INJAR)

serialInterface.h: HelperUtility.class
	javah -o serialInterface.h HelperUtility

HelperUtility.class: $(JAVAFILES)
	javac -g $(JAVAFILES)

doc/index.html: $(JAVAFILES)
	javadoc -d doc $(JAVAFILES)

ifdef SystemRoot
libSerial: Serial.dll
else
ifdef SYSTEMROOT
libSerial: Serial.dll
else
ifeq ($(UNAME),Darwin)
libSerial: libSerial.jnilib
else
libSerial: libSerial.so
endif
endif
endif

Serial.dll: libSerial/serialHelper.c libSerial/winSerial.c
	make -C libSerial
	mv libSerial/Serial.dll Serial.dll

libSerial.jnilib: libSerial/serialHelper.c libSerial/unixSerial.c
	make -C libSerial
	mv libSerial/libSerial.jnilib libSerial.jnilib

libSerial.so: libSerial/serialHelper.c libSerial/unixSerial.c
	make -C libSerial
	mv libSerial/libSerial.so libSerial.so

# Delete intermediate files
clean:
	make -C libSerial clean
	$(RM) *.class
	$(RM) *.o
ifdef SystemRoot
	$(RM) *.dll
	$(RM) CubeControlWin.jar
else
ifdef SYSTEMROOT
	$(RM) *.dll
	$(RM) CubeControlWin.jar
else
ifeq ($(UNAME),Darwin)
	$(RM) *.jnilib
	$(RM) CubeControlMac.jar
else
	$(RM) *.so
	$(RM) CubeControlLinux.jar
endif
endif
endif
