# Makefile for generating android vector drawables from Google supplied svg
# files.

STYLESHEET = svg2vector.xslt

SOURCES=$(shell find . -name "*.svg")
OBJECTS=$(SOURCES:%.svg=%.xml)

all: $(OBJECTS)

%.xml: %.svg $(STYLESHEET)
	@echo "["Generating $@"]"
	xsltproc -o $@ $(STYLESHEET) $<

#%.o: %.cc
    #@echo "["Compiling $@"]"
    #g++ -c -g $< -o $@ $(CPPFLAGS)
	
