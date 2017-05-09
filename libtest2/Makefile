# Makefile

# macros
SRCS      = libtest2.cpp
OBJS      = $(SRCS:.cpp=.o)
TARGET    = libtest2.so
CXX       = g++
CXXFLAGS  =  -O3 -Wall -fPIC
LDFLAGS   = -shared
INCLUDES  = -I.
LIBS      = 

# rules
all:	$(OBJS)
	$(CXX) $(LDFLAGS) $(OBJS) $(LIBS) -o $(TARGET)
	@echo done.

$(OBJS): $(SRCS)
	$(CXX) $(CXXFLAGS) $(INCLUDES) $(SRCS) -c

clean:
	rm -rf *.o $(TARGET)
