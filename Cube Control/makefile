JAVAC = javac
CC = gcc
#TARGET = unix
TARGET = win


all: build clean

build: frame.class
ifeq ($(TARGET),win)
	jar -cmf manifest.txt "Cube Control.jar" *.class serialHelper.exe
else
	jar -cmf manifest.txt "Cube Control.jar" *.class serialHelper
endif

ifeq ($(TARGET),win)
frame.class: serialHelper.exe
else
frame.class: serialHelper
endif
	$(JAVAC) *.java

serialHelper.exe:
	$(CC) -o serialHelper.exe -D winHelper serialHelper.c

serialHelper:
	$(CC) -o serialHelper serialHelper.c

clean:
	rm -f *.class
ifeq ($(TARGET),win)
	rm -f serialHelper.exe
else
	rm -f serialHelper
endif
