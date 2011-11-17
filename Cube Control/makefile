JAVAC = javac
CC = gcc
TARGET = unix
#TARGET = win


all: build clean

build: frame.class
ifeq ($(TARGET),win)
	jar -cmf manifest.txt "Cube Control.jar" *.class serialHelper.exe
else
	jar -cmf manifest.txt "Cube Control.jar" *.class serialHelper
endif

frame.class: serialHelper
	$(JAVAC) *.java

ifeq ($(TARGET),win)
serialHelper.exe:
	$(CC) -o serialHelper.exe -D winHelper serialHelper.c
else
serialHelper:
	$(CC) -o serialHelper serialHelper.c
endif

clean:
	rm -f *.class
	rm -f serialHelper
