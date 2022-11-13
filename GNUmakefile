DESTDIR     =
PREFIX      =/usr/local
CXX         =c++
CXXFLAGS    =-Wall -std=c++11 -g
FLTK_CONFIG =$(shell PATH=$${SYSROOT_PATH:-$$PATH} which fltk-config)
PROGRAMS    =./hello-fltk$(EXE)

ifeq ($(FLTK_CONFIG),)
$(error "Can't find FLTK_CONFIG")
endif

FLAGS_FLTK=$(shell $(FLTK_CONFIG) --libs --cxxflags --ldflags | sed '/-mwindows/s/$$/ -static/')
FLAGS_PX=$(CXXFLAGS) $(CPPFLAGS) -DPREFIX='"$(PREFIX)"' $(LDFLAGS) $(LIBS)

all: $(PROGRAMS)
clean:
	rm -f $(PROGRAMS)
install:
update:

./hello-fltk$(EXE): hello-fltk.cxx
	$(CXX) -o $@ $< $(FLAGS_FLTK) $(FLAGS_PX)
