CC = gcc
SRC = main.c
SRC += serial.c

TARGET = uploadTest

OBJ = $(SRC:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) -o $(TARGET) $(OBJ)

%.o: %.c
	$(CC) -x c -c $< -o $@

clean:
	$(RM) *.o
	$(RM) $(TARGET)