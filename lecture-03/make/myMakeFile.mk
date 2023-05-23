# Makefile for student_service

CXX = g++
CXXFLAGS = -Wall -Wconversion -Wextra -fPIC -g -O0
OBJS = Main.o Student.o
LIBOBJS = Name.o
RM = rm
MV = mv
CP = cp
LIB_DIR = -L 
INCLUDE_DIR = ./include
LIB = -lName
INSTALL_DIR = ./bin
LIB_INSTALL_DIR = ./lib

ROOT=$(shell pwd)

.PHONY: install clean

Main.o : Main.cpp
	$(CXX) $(CXXFLAGS) -c Main.cpp

Student.o : Student.cpp Student.hpp
	$(CXX) $(CXXFLAGS) -c Student.cpp

Name.o : Name.cpp Name.hpp
	$(CXX) $(CXXFLAGS) -c Name.cpp

%.o : %.cpp
	$(CXX) $(CXXFLAGS) -I$(INCLUDE_DIR) -c $<

install : student_service
	-$(MV) student_service  $(INSTALL_DIR)


# Dependencies
Main.o    : Student.hpp
Student.o : Student.hpp	Name.hpp
Name.o	  :	Name.hpp


# clean:  
# 	-$(RM) *.o $(INSTALL_DIR)/student_service
#################################################
# Linking Libraries
#################################################
student_service : $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $(OBJS) -rpath $(ROOT)/lib $(LIB_DIR) $(LIB)

.PHONY: install_lib namelib clean_lib

namelib: libName.a	libName.so 

libName.so : $(LIBOBJS) 
	$(CXX) $(CXXFLAGS) -dynamiclib -install_name $(ROOT)/lib/$@ -o $@ $^
# -install_name specifies the path to the library
# -dynamiclib is a flag for Mac OS X

libName.a : Name.o
	ar rvs $@ $^

install_lib: namelib
	-$(MV) libName.a  $(LIB_INSTALL_DIR)
	-$(MV) libName.so $(LIB_INSTALL_DIR)
	-$(CP) Name.hpp $(INCLUDE_DIR)

# Dependencies
Name.o    : Name.hpp

clean_lib: 
	-$(RM) $(LIB_INSTALL_DIR)/*.a $(LIB_INSTALL_DIR)/*.so $(INCLUDE_DIR)/*



