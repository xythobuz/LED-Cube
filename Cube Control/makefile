JAVAC = javac
CC = gcc
#TARGET = unix
TARGET = win

JAVAFILES = cubeWorker.java layerEditFrame.java frame.java

ifeq ($(TARGET),win)
CLASSES = cubeWorker.class layerEditFrame.class layerEditFrame$$1.class layerEditFrame$$2.class layerEditFrame$$3.class layerEditFrame$$4.class frame.class frame$$1.class frame$$2.class frame$$3.class frame$$4.class frame$$5.class frame$$6.class frame$$7.class frame$$8.class frame$$9.class frame$$10.class frame$$11.class frame$$12.class frame$$13.class frame$$14.class frame$$15.class frame$$16.class frame$$17.class frame$$18.class frame$$19.class frame$$20.class frame$$21.class frame$$22.class frame$$23.class frame$$24.class AFrame.class Animation.class AnimationUtility.class LEDoff.png LEDon.png
else
CLASSES = 'cubeWorker.class' 'layerEditFrame.class' 'layerEditFrame$$1.class' 'layerEditFrame$$2.class' 'layerEditFrame$$3.class' 'layerEditFrame$$4.class' 'frame.class' 'frame$$1.class' 'frame$$2.class' 'frame$$3.class' 'frame$$4.class' 'frame$$5.class' 'frame$$6.class' 'frame$$7.class' 'frame$$8.class' 'frame$$9.class' 'frame$$10.class' 'frame$$11.class' 'frame$$12.class' 'frame$$13.class' 'frame$$14.class' 'frame$$15.class' 'frame$$16.class' 'frame$$17.class' 'frame$$18.class' 'frame$$19.class' 'frame$$20.class' 'frame$$21.class' 'frame$$22.class' 'frame$$23.class' 'frame$$24.class' 'AFrame.class' 'Animation.class' 'AnimationUtility.class' 'LEDoff.png' 'LEDon.png'
endif

all: build clean

build: frame.class
ifeq ($(TARGET),win)
	jar -cmf manifest.txt "Cube Control.jar" $(CLASSES) serialHelper.exe
else
	jar -cmf manifest.txt "Cube Control.jar" $(CLASSES) serialHelper
endif

ifeq ($(TARGET),win)
frame.class: serialHelper.exe
else
frame.class: serialHelper
endif
	$(JAVAC) $(JAVAFILES)

serialHelper.exe:
	$(CC) -o serialHelper.exe -D winHelper serialHelper.c

serialHelper:
	$(CC) -o serialHelper serialHelper.c

clean:
ifeq ($(TARGET),win)
	del *.class
	del serialHelper.exe
else
	rm -f *.class
	rm -f serialHelper
endif
