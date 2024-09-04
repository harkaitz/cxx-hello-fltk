include mk/fltk.mk
PROJECT      =cxx-hello-fltk
VERSION      =1.0.0
DESTDIR      =
PREFIX       =/usr/local
CXX          =c++ -Wall -std=c++11 -g
PROGRAMS     =hello-fltk$(EXE)
SOURCES      =hello-fltk.cxx
DEPENDS      =fltk

##
CXXFLAGS_FULL=$(CXXFLAGS) $(CPPFLAGS) -DPREFIX='"$(PREFIX)"' $(LDFLAGS) $(FLTK_LIBS) $(LIBS)

##
all: $(PROGRAMS)
clean:
	rm -f $(PROGRAMS)
install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp hello-fltk$(EXE) $(DESTDIR)$(PREFIX)/bin

##
hello-fltk$(EXE): $(SOURCES)
	$(CXX) -o $@ $(SOURCES) $(CXXFLAGS_FULL)

## -- BLOCK:license --
install: install-license
install-license: README.md LICENSE
	mkdir -p $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
	cp README.md LICENSE $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
## -- BLOCK:license --
