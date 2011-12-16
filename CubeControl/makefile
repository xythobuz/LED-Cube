# Name of your C-Compiler
CC = gcc
# Path to jni.h
HEADERPATH = /System/Library/Frameworks/JavaVM.framework/Headers

ifdef SystemRoot
HEADERPATH = C:\Program\ Files\Java\jdk1.6.0_29\include
endif

# All java files to be compiled
# List so it works as target
JAVAFILES = HelperUtility.java AnimationUtility.java Animation.java AFrame.java cubeWorker.java layerEditFrame.java Led3D.java Frame.java

# Files that go in the jar
INJAR = *.class *.png


all: CubeControl.jar

doc: doc/index.html

CubeControl.jar: libSerial HelperUtility.class manifest.txt
	jar -cmf manifest.txt "CubeControl.jar" $(INJAR)

serialInterface.h: HelperUtility.class
	javah -o serialInterface.h HelperUtility

HelperUtility.class: $(JAVAFILES)
	javac $(JAVAFILES)

# SystemRoot is only defined in Windows
ifdef SystemRoot
libSerial: Serial.dll
$(RM) = del
else
libSerial: libSerial.jnilib
$(RM) = rm -f
endif

libSerial.jnilib: serialHelper.c helper/unixSerial.c serialInterface.h
	$(CC) -x c -I$(HEADERPATH) -c serialHelper.c -o serialHelper.o
	$(CC) -dynamiclib -o libSerial.jnilib serialHelper.o
	rm -f serialHelper.o

Serial.dll: serialHelper.c helper/winSerial.c serialInterface.h
	$(CC) -x c -I$(HEADERPATH) -c serialHelper.c -o serialHelper.o -D winHelper
	$(CC) -dynamiclib -o Serial.dll serialHelper.o
	del serialHelper.o

doc/index.html: $(JAVAFILES)
	javadoc -d doc $(JAVAFILES)

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
