FLTK_CONFIG =$(shell PATH=$${SYSROOT_PATH:-$$PATH} which fltk-config)
FLTK_LIBS   =$(if $(FLTK_CONFIG),$(shell $(FLTK_CONFIG) --libs --cxxflags --ldflags | sed '/-mwindows/s/$$/ -static/'))

all:
check: check-fltk
check-fltk:
        ifeq ($(FLTK_CONFIG),)
	@echo >&2 "error: Can't find fltk-config in PATH or SYSROOT_PATH (libfltk1.3-dev)."
	@exit 1
        else
	@echo "FLTK_CONFIG : $(FLTK_CONFIG)"
	@echo "FLTK_LIBS   : $(FLTK_LIBS)"
        endif
