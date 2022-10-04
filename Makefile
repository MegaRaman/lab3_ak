CC = g++

INCLUDEDIRS = include

LIBNAME = sharedtest
LIBFILENAME = libsharedtest.so

BINARY = elfFile

SOURCESBINARY = main.cpp
SOURCESLIB = calculator.cpp
OBJECTSLIB = $(patsubst %.cpp,%.o,$(SOURCESLIB))


.PHONY: all
all: $(BINARY)

$(BINARY): $(SOURCESBINARY) lib
	$(CC) $< -o $@ -I $(foreach D,$(INCLUDEDIRS),$(D)) -l$(LIBNAME)

.PHONY: lib
lib: $(OBJECTSLIB)
	$(CC) $^ -fpic -shared -o $(LIBFILENAME)
	sudo mv $(LIBFILENAME) /usr/lib/  
	
$(OBJECTSLIB): $(SOURCESLIB)
	$(CC) $^ -fpic -c -I $(INCLUDEDIRS)

.PHONY: clean
clean:
	rm -rf $(BINARY) *.o
