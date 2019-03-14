#
# Compiler to use
#
CC = g++

#
# Where the libraries and include files are located.
#
CFLAGS = -I../../include -L../../lib -Wl,-R../../lib
LIBS = -lchartdir
TARGET = threedbubble3


all: $(TARGET)

$(TARGET): $(TARGET).cpp
	$(CC) $(CFLAGS) $(TARGET).cpp $(LIBS) -o $@

test: all
	./$(TARGET)

clean:
	rm -f $(TARGET) *.o $(TARGET)*.png
