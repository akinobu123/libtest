# Makefile

# macros
SRCS      = libtest1.cpp
OBJS      = $(SRCS:.cpp=.o)
TARGET    = libtest1.so
CXX       = g++
CXXFLAGS  =  -O3 -Wall -fPIC
LDFLAGS   = -shared
INCLUDES  = -I.
LIBS      = -L../libtest2 -ltest2

# rules
all:	$(OBJS)
	$(CXX) $(LDFLAGS) $(OBJS) $(LIBS) -o $(TARGET)
	@echo done.

$(OBJS): $(SRCS)
	$(CXX) $(CXXFLAGS) $(INCLUDES) $(SRCS) -c

clean:
	rm -rf *.o $(TARGET)
