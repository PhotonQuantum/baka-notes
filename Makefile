# The wildcard function is used to make a list of all .typ files
TYP_FILES = $(wildcard *.typ)

# This rule says that .typ files are created from .typ files
all: $(TYP_FILES:%.typ=%.pdf)

# This is a pattern rule
%.pdf : %.typ
	typst compile $<

# This rule will clean up all the applied files
clean:
	rm -f *.pdf

# This rule will help to recompile everything
recompile: clean all

.PHONY: all clean recompile