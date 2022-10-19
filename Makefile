CC=g++
CFLAGS=-c -Wall
SOURCES=main.cpp calculator.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=executable

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@
	
clean:
	rm -rf *.o output
