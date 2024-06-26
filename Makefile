TARGET = sdl2-text-gen
OBJS = main.o

INCDIR = /usr/local/pspdev/psp/include
CFLAGS = -g -O2 -G0 -Wall
CXXFLAGS = $(CFLAGS) -fno-exceptions
ASFLAGS = $(CFLAGS)

LIBDIR  = /usr/local/pspdev/psp/lib
LIBS =  -lSDL2 -lSDL2main -lSDL2_image -lfreetype -ljpeg -lpng -lbz2 -lGL -lGLU -lglut -lz \
         -lpspvfpu -lpsphprm -lpspsdk -lpspctrl -lpspumd -lpsprtc -lpsppower -lpspgum -lpspgu -lpspaudiolib -lpspaudio -lpsphttp -lpspssl -lpspwlan \
         -lpspnet_adhocmatching -lpspnet_adhoc -lpspnet_adhocctl -lpspvram -lm -lvorbis -lvorbisenc -lvorbisfile -logg -lsmpeg -lstdc++

EXTRA_TARGETS = EBOOT.PBP
PSP_EBOOT_TITLE = SDL2 TTF Test
PSP_EBOOT_ICON = gfx/icon.png

PSPSDK=$(shell psp-config --pspsdk-path)
include $(PSPSDK)/lib/build.mak
