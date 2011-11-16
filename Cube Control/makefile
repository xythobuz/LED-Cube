JAVAC = javac
CC = gcc
TARGET = unix
#TARGET = win


all: java

java: serialHelper
	$(JAVAC) *.java

serialHelper:
ifeq ($(TARGET),win)
	$(CC) -o serialHelper -D winHelper serialHelper.c
else
	$(CC) -o serialHelper serialHelper.c
endif

clean:
	rm -f *.class
	rm -f serialHelper
