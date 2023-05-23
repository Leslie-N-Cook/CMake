# Simplest possible makefile
#
# Basic component of each makefile looks like this
# <target> : <dependencies>
# (tab) <rule>
#
# The (tab) charcter has special meaning in make. It denotes beginning
# of a rule.
# 
# Break compilation to separate objects. The first rule is executed first.
# Then, make looks for rules to build the dependencies, starting from the
# next rule down. 
#

# Target clean is not a file. Don't check its modification time, always execute
CXX = g++
CXXFLAGS = -Wall -Wconversion -Wextra # -g -O0
OBJS = Main.o Name.o Student.o
RM = rm

.PHONY: clean

student_service : $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^ -L/opt/lib -lName

Main.o : Main.cpp
	$(CXX) $(CXXFLAGS) -c Main.cpp

Student.o : Student.cpp Student.hpp
	$(CXX) $(CXXFLAGS) -c Student.cpp

Name.o : Name.cpp Name.hpp
	$(CXX) $(CXXFLAGS) -c Name.cpp

libName.a : Name.o
	ar rvs $@ $^

libName.so : Name.o
	$(CXX) $(CXXFLAGS) -shared -o $@ $^



clean:  # "-" in front of $(RM) ensures no error returned if files don't exist
	-$(RM) *.o student_service

