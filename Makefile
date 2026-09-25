# Define the compiler
CC = clang

# Get the compiler and linker flags from pkg-config
CFLAGS = $(shell pkg-config --cflags gtk+-3.0)
LDLIBS = $(shell pkg-config --libs gtk+-3.0)

# Define the target executable name
TARGET = brick

# The build rule
$(TARGET): brick.c
	$(CC) $(CFLAGS) brick.c -o $(TARGET) $(LDLIBS)

# Clean rule to remove the compiled executable
clean:
	rm -f $(TARGET)