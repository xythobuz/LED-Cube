# Name of your C-Compiler
CC = gcc
# Path to jni.h
ifdef SystemRoot
HEADERPATH = C:/Program\ Files/Java/jdk1.6.0_29/include
$(RM) = del
else
HEADERPATH = /System/Library/Frameworks/JavaVM.framework/Headers
$(RM) = rm -f
endif

# All java files to be compiled
# List so it works as target
JAVAFILES = HelperUtility.java AnimationUtility.java Animation.java AFrame.java cubeWorker.java layerEditFrame.java Led3D.java Frame.java

# Files that go in the jar
INJAR = *.class *.png

# --------------------------------------

all: libSerial CubeControl.jar

doc: doc/index.html

CubeControl.jar: HelperUtility.class manifest.txt
	jar -cmf manifest.txt "CubeControl.jar" $(INJAR)

serialInterface.h: HelperUtility.class
	javah -o serialInterface.h HelperUtility

HelperUtility.class: $(JAVAFILES)
	javac $(JAVAFILES)

libSerial.jnilib: serialHelper.c helper/unixSerial.c serialInterface.h
	$(CC) -x c -I$(HEADERPATH) -c serialHelper.c -o serialHelper.o
	$(CC) -dynamiclib -o libSerial.jnilib serialHelper.o

Serial.dll: serialHelper.c helper/winSerial.c serialInterface.h
	$(CC) -x c -I$(HEADERPATH) -c serialHelper.c -o serialHelper.o -D winHelper
	$(CC) -shared -o Serial.dll serialHelper.o

doc/index.html: $(JAVAFILES)
	javadoc -d doc $(JAVAFILES)

# SystemRoot is only defined in Windows
ifdef SystemRoot
libSerial: Serial.dll
else
libSerial: libSerial.jnilib
endif

# Delete intermediate files
clean:
	$(RM) *.class
	$(RM) *.h
	$(RM) *.o
	$(RM) *.jar
ifdef SystemRoot
	$(RM) *.dll
else
	$(RM) *.jnilib
endif
