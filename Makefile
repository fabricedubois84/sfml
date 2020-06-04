XX = g++
CXXFLAGS = -std=c++17 -Wall -g
INCLUDES = 
#-I/usr/include
SFML = -lsfml-system -lsfml-window -lsfml-graphics -lsfml-network -lsfml-audio
#LFLAGS = -L../includes
SRCS = main.cpp
OBJS = $(SRCS:.cpp=.o)

EXEC = appli

all: $(EXEC)
	@echo $(EXEC) has been compiled

$(EXEC): $(OBJS) 
	$(CXX) $(CXXFLAGS) $(INCLUDES) -o $(EXEC) $(OBJS) $(SFML)
# $(LFLAGS) at the end of above line

.cpp.o:
	$(CXX) $(CXXFLAGS) $(INCLUDES) -c $< -o $@ $(SFML)

clean:
	$(RM) *.o *~ $(EXEC)

depend: $(SRCS)
	makedepend $(INCLUDES) $^


