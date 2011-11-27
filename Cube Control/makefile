JAVAC = javac
CC = gcc
TARGET = unix
#TARGET = win

# Java files to be compiled
ifeq ($(TARGET),win)
JAVAFILES = cubeWorker.java layerEditFrame.java frame.java
else
JAVAFILES = *.java
endif

# Windows doesn't like *.class, so we have to maintain a list of all classes :(
ifeq ($(TARGET),win)
INJAR = cubeWorker.class layerEditFrame.class layerEditFrame$$1.class layerEditFrame$$2.class layerEditFrame$$3.class layerEditFrame$$4.class frame.class frame$$1.class frame$$2.class frame$$3.class frame$$4.class frame$$5.class frame$$6.class frame$$7.class frame$$8.class frame$$9.class frame$$10.class frame$$11.class frame$$12.class frame$$13.class frame$$14.class frame$$15.class frame$$16.class frame$$17.class frame$$18.class frame$$19.class frame$$20.class frame$$21.class frame$$22.class frame$$23.class frame$$24.class AFrame.class Animation.class AnimationUtility.class HelperUtility.class LEDoff.png LEDon.png serialHelper.exe
else
INJAR = *.class *.png serialHelper
endif

# Spit out jar file, delete intermediate files
all: build clean

# Compile java files
java: frame.class

# Spit out jar file, dont remove anything after that
build: frame.class serialHelper
	jar -cmf manifest.txt "Cube Control.jar" $(INJAR)

# Compile java files
frame.class: $(JAVAFILES)
	$(JAVAC) $(JAVAFILES)

# Compile serial Helper
ifeq ($(TARGET),win)
serialHelper: serialHelper.c helper/winSerial.c
	$(CC) -o serialHelper.exe -D winHelper serialHelper.c
else
serialHelper: serialHelper.c helper/unixSerial.c
	$(CC) -o serialHelper serialHelper.c
endif

# Delete intermediate files
clean:
ifeq ($(TARGET),win)
	del *.class
	del serialHelper.exe
else
	rm -f *.class
	rm -f serialHelper
endif
