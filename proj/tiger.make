# GNU Make project makefile autogenerated by Premake
ifndef config
  config=debug64
endif

ifndef verbose
  SILENT = @
endif

ifndef CC
  CC = gcc
endif

ifndef CXX
  CXX = g++
endif

ifndef AR
  AR = ar
endif

ifeq ($(config),debug64)
  OBJDIR     = obj/x64/Debug/tiger
  TARGETDIR  = ../bin
  TARGET     = $(TARGETDIR)/tiger
  DEFINES   += -D_DEBUG -DENABLE_FREE_TYPE2=1 -DENABLE_FONT_CONFIG=1
  INCLUDES  += -I../include -I../build -I../test
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -g -Wall -msse2 -m64 `pkg-config --cflags gtk+-2.0`
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -m64 -L/usr/lib64 `pkg-config --libs gtk+-2.0`  -Wl,-rpath=./ -L../bin
  LIBS      += -lpicasso2_sw -lz -lfreetype
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += ../bin/libpicasso2_sw.so
  LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(ARCH) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release64)
  OBJDIR     = obj/x64/Release/tiger
  TARGETDIR  = ../bin
  TARGET     = $(TARGETDIR)/tiger
  DEFINES   += -DNDEBUG -DENABLE_FREE_TYPE2=1 -DENABLE_FONT_CONFIG=1
  INCLUDES  += -I../include -I../build -I../test
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -O2 -Wall -msse2 -m64 `pkg-config --cflags gtk+-2.0`
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -s -m64 -L/usr/lib64 `pkg-config --libs gtk+-2.0`  -Wl,-rpath=./ -L../bin
  LIBS      += -lpicasso2_sw -lz -lfreetype
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += ../bin/libpicasso2_sw.so
  LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(ARCH) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug32)
  OBJDIR     = obj/x32/Debug/tiger
  TARGETDIR  = ../bin
  TARGET     = $(TARGETDIR)/tiger
  DEFINES   += -D_DEBUG -DENABLE_FREE_TYPE2=1 -DENABLE_FONT_CONFIG=1
  INCLUDES  += -I../include -I../build -I../test
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -g -Wall -msse2 -m32 `pkg-config --cflags gtk+-2.0`
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -m32 -L/usr/lib32 `pkg-config --libs gtk+-2.0`  -Wl,-rpath=./ -L../bin
  LIBS      += -lpicasso2_sw -lz -lfreetype
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += ../bin/libpicasso2_sw.so
  LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(ARCH) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release32)
  OBJDIR     = obj/x32/Release/tiger
  TARGETDIR  = ../bin
  TARGET     = $(TARGETDIR)/tiger
  DEFINES   += -DNDEBUG -DENABLE_FREE_TYPE2=1 -DENABLE_FONT_CONFIG=1
  INCLUDES  += -I../include -I../build -I../test
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -O2 -Wall -msse2 -m32 `pkg-config --cflags gtk+-2.0`
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -s -m32 -L/usr/lib32 `pkg-config --libs gtk+-2.0`  -Wl,-rpath=./ -L../bin
  LIBS      += -lpicasso2_sw -lz -lfreetype
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += ../bin/libpicasso2_sw.so
  LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(ARCH) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJECTS := \
	$(OBJDIR)/tiger.o \
	$(OBJDIR)/platform_gtk2.o \

RESOURCES := \

SHELLTYPE := msdos
ifeq (,$(ComSpec)$(COMSPEC))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  SHELLTYPE := posix
endif

.PHONY: clean prebuild prelink

all: $(TARGETDIR) $(OBJDIR) prebuild prelink $(TARGET)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LDDEPS) $(RESOURCES)
	@echo Linking tiger
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning tiger
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild:
	$(PREBUILDCMDS)

prelink:
	$(PRELINKCMDS)

ifneq (,$(PCH))
$(GCH): $(PCH)
	@echo $(notdir $<)
	-$(SILENT) cp $< $(OBJDIR)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
endif

$(OBJDIR)/tiger.o: ../demos/tiger.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/platform_gtk2.o: ../demos/platform_gtk2.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)
