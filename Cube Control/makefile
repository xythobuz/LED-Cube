JAVAC = javac
CC = gcc
TARGET = unix
#TARGET = win


all: java

java: helper
	$(JAVAC) *.java

helper:
	$(CC) -o serialHelper $(TARGET)Helper.c

clean:
	rm -f *.class
	rm -f serialHelper
