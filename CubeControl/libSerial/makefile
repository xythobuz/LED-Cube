CC = gcc
# Path to jni.h
ifdef SystemRoot
HEADERPATH = C:/Program\ Files/Java/jdk1.6.0_29/include
RM = del
PLATFORM = Win
else
HEADERPATH = /System/Library/Frameworks/JavaVM.framework/Headers
RM = rm -f
PLATFORM = Mac
endif

# --------------------------------------

all: libSerial

doc: doc/index.html

serialInterface.h: HelperUtility.class
	javah -o serialInterface.h HelperUtility

HelperUtility.class: ../HelperUtility.java
	javac ../HelperUtility.java
	cp ../HelperUtility.class HelperUtility.class

# SystemRoot is only defined in Windows
ifdef SystemRoot
libSerial: Serial.dll
else
UNAME := $(shell uname -s)
ifeq ($(UNAME),Darwin)
libSerial: libSerial.jnilib
else
libSerial: libSerial.so
endif
endif

libSerial.jnilib: serialHelper.c unixSerial.c serialInterface.h
	$(CC) -x c -I$(HEADERPATH) -c serialHelper.c -o serialHelper.o
	$(CC) -dynamiclib -o libSerial.jnilib serialHelper.o

libSerial.so: serialHelper.c unixSerial.c serialInterface.h
	$(CC) -x c -I$(HEADERPATH) -c serialHelper.c -o serialHelper.o
	$(CC) -dynamiclib -o libSerial.so serialHelper.o

Serial.dll: serialHelper.c winSerial.c serialInterface.h
	$(CC) -x c -I$(HEADERPATH) -c serialHelper.c -o serialHelper.o -D winHelper
	$(CC) -shared -o Serial.dll serialHelper.o

# Delete intermediate files
clean:
	$(RM) *.class
	$(RM) *.h
	$(RM) *.o
ifdef SystemRoot
	$(RM) *.dll
else
	$(RM) *.jnilib
endif
