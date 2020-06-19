CC ?= gcc
CXX ?= g++

DEPS = 
OBJ = hello.cpp

%.o: %.c $(DEPS)
	$(CXX) -c -o $@ $< $(CFLAGS)

run: hello
	./hello

hello: $(OBJ)
	$(CXX) -o $@ $^ $(CFLAGS)