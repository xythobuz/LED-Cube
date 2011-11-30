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

ifeq ($(TARGET),win)
INJAR = *.class *.png serialHelper.exe
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
