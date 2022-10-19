CC = g++
CFLAGS = -c -Wall
SOURCES = main.cpp calculator.cpp
OBJECTS = $(SOURCES:.cpp=.o)
EXECUTABLE = executable
INCLUDE = include
LIBFILENAME = libshared.so
SOURCESLIB = calculator.cpp
OBJECTSLIB = $(SOURCESLIB:.cpp=.o)

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS) lib
	$(CC) $(OBJECTS) -I $(INCLUDE) -o $@
	
lib: $(OBJECTSLIB)
	$(CC) $^ -shared -o $(LIBFILENAME)
	
.cpp.o:
	$(CC) $(CFLAGS) -I $(INCLUDE) $< -o $@
	
clean:
	rm -rf *.o output
