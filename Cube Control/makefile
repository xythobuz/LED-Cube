JAVAC = javac
JAVADOC = javadoc
DOCDIR = doc
CC = gcc
TARGET = unix
#TARGET= cygwin
#TARGET = win

# Java files to be compiled
# Needs to be a complete list so they work as target
JAVAFILES = HelperUtility.java AnimationUtility.java Animation.java AFrame.java cubeWorker.java layerEditFrame.java Led3D.java Frame.java

ifeq ($(TARGET),unix)
INJAR = *.class *.png serialHelper
RM = rm
else
INJAR = *.class *.png serialHelper.exe
RM = del
endif

# Cygwin needs the .exe file, but the rm command!
# Don't add a space after the comma. You get 'missing separator'...
# Also add a space after 'ifeq', else you get 'missing separator'...
ifeq ($(TARGET),cygwin)
RM = rm
endif

# Spit out jar file, documentation, delete intermediate files
all: build doc clean

# Generate Documentation
doc: doc/index.html

# Compile java files
java: Frame.class

# Spit out jar file, dont remove anything after that
build: Frame.class serialHelper
	jar -cmf manifest.txt "Cube Control.jar" $(INJAR)

# Compile java files
Frame.class: $(JAVAFILES)
	$(JAVAC) $(JAVAFILES)

doc/index.html: $(JAVAFILES)
	$(JAVADOC) -d $(DOCDIR) $(JAVAFILES)

# Compile serial Helper
ifeq ($(TARGET),unix)
serialHelper: serialHelper.c helper/unixSerial.c
	$(CC) -o serialHelper serialHelper.c
else
serialHelper: serialHelper.c helper/winSerial.c
	$(CC) -o serialHelper.exe -D winHelper serialHelper.c
endif

# Delete intermediate files
clean:
	$(RM) *.class
ifeq ($(TARGET),unix)
	$(RM) serialHelper
else
	$(RM) serialHelper.exe
endif
