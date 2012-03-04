CC = gcc
STANDARD = gnu99
# Path to jni.h
ifdef SystemRoot
HEADERPATH = C:/Program\ Files/Java/jdk1.6.0_29/include
RM = del
else
ifdef SYSTEMROOT
# Looks like Cygwin or Mingw shell
HEADERPATH = C:\Programme\Java\jdk1.6.0_31\include
HEADERPATH += -IC:\Programme\Java\jdk1.6.0_31\include\win32
RM = rm -rf
else
RM = rm -f
UNAME := $(shell uname -s)
ifeq ($(UNAME),Darwin)
HEADERPATH = /System/Library/Frameworks/JavaVM.framework/Headers
else 
HEADERPATH = /usr/lib/jvm/java-6-openjdk/include
endif
endif
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
ifdef SYSTEMROOT
libSerial: Serial.dll
else
ifeq ($(UNAME),Darwin)
libSerial: libSerial.jnilib
else
libSerial: libSerial.so
endif
endif
endif

libSerial.jnilib: serialHelper.c unixSerial.c serialInterface.h
	$(CC) -x c -std=$(STANDARD) -I$(HEADERPATH) -c serialHelper.c -o serialHelper.o
	$(CC) -dynamiclib -o libSerial.jnilib serialHelper.o

libSerial.so: serialHelper.c unixSerial.c serialInterface.h
	$(CC) -x c -std=$(STANDARD) -I$(HEADERPATH) -c serialHelper.c -o serialHelper.o
	$(CC) -dynamiclib -o libSerial.so serialHelper.o

Serial.dll: serialHelper.c winSerial.c serialInterface.h
	$(CC) -x c -std=$(STANDARD) -I$(HEADERPATH) -c serialHelper.c -o serialHelper.o -D winHelper
	$(CC) -shared -o Serial.dll serialHelper.o

# Delete intermediate files
clean:
	$(RM) *.class
	$(RM) *.h
	$(RM) *.o
ifdef SystemRoot
	$(RM) *.dll
else
ifdef SYSTEMROOT
	$(RM) *.dll
else
ifeq ($(UNAME),Darwin)
	$(RM) *.jnilib
else
	$(RM) *.so
endif
endif
endif
