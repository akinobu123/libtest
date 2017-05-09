# Makefile

# macros
SRCS      = test.cpp
OBJS      = $(SRCS:.cpp=.o)
TARGET    = test.out
CXX       = g++
CXXFLAGS  =  -O3 -Wall -fPIC
LDFLAGS   = 
INCLUDES  = -I./libtest1 -I.
LIBS      = -L./libtest1 -ltest1

# rules
all:	$(OBJS)
	$(CXX) $(LDFLAGS) $(OBJS) $(LIBS) -o $(TARGET)
	@echo done.

$(OBJS): $(SRCS)
	$(CXX) $(CXXFLAGS) $(INCLUDES) $(SRCS) -c

clean:
	rm -rf *.o $(TARGET)
