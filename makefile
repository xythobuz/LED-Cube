all: Control Firmware

Control:
	make -C CubeControl
	mv CubeControl/CubeControl.jar CubeControl.jar
ifdef SystemRoot
	mv CubeControl/Serial.dll Serial.dll
else
	mv CubeControl/libSerial.jnilib libSerial.jnilib
endif
	make -C CubeControl clean

Firmware:
	make -C CubeFirmware
	mv CubeFirmware/main.hex CubeFirmware.hex
	make -C CubeFirmware clean

clean:
ifdef SystemRoot
	del CubeControl.jar
	del CubeFirmware.hex
	del Serial.dll
else
	rm -f CubeControl.jar
	rm -f CubeFirmware.hex
	rm -f libSerial.jnilib
endif
