JAVAC = javac
JAVADOC = javadoc
JAVAH = javah
DOCDIR = doc
CC = gcc
TARGET = unix
#TARGET= cygwin
#TARGET = win

HEADERPATH = /System/Library/Frameworks/JavaVM.framework/Headers

# Java files to be compiled
# Needs to be a complete list so they work as target
JAVAFILES = HelperUtility.java AnimationUtility.java Animation.java AFrame.java cubeWorker.java layerEditFrame.java Led3D.java Frame.java

ifeq ($(TARGET),unix)
INJAR = *.class *.png
RM = rm -f
else
INJAR = *.class *.png
RM = del
endif

# Cygwin needs the .exe file, but the rm command!
# Don't add a space after the comma. You get 'missing separator'...
# Also add a space after 'ifeq', else you get 'missing separator'...
ifeq ($(TARGET),cygwin)
RM = rm
endif

# Spit out jar file, documentation, delete intermediate files
all: build

# Generate Documentation
doc: doc/index.html

# Compile java files
java: Frame.class

# Spit out jar file, dont remove anything after that
build: Frame.class libSerial
	jar -cmf manifest.txt "Cube Control.jar" $(INJAR)

# Compile java files
Frame.class: $(JAVAFILES)
	$(JAVAC) $(JAVAFILES)

doc/index.html: $(JAVAFILES)
	$(JAVADOC) -d $(DOCDIR) $(JAVAFILES)

# Compile serial Helper
ifeq ($(TARGET),unix)
libSerial: serialInterface.h serialHelper.c helper/unixSerial.c
	$(CC) -x c -I$(HEADERPATH) -c serialHelper.c -o serialHelper.o
	$(CC) -dynamiclib -o libSerial.jnilib serialHelper.o
else
libSerial: serialInterface.h serialHelper.c helper/winSerial.c
	$(CC) -x c -I$(HEADERPATH) -c serialHelper.c -o serialHelper.o -D winHelper
	$(CC) -dynamiclib -o libSerial.dll serialHelper.o
endif

serialInterface.h:
	$(JAVAC) HelperUtility.java
	$(JAVAH) -o serialInterface.h HelperUtility

# Delete intermediate files
clean:
	$(RM) *.class
	$(RM) *.h
	$(RM) *.o
	$(RM) *.jar
ifeq ($(TARGET),unix)
	$(RM) *.jnilib
else
	$(RM) *.dll
endif
