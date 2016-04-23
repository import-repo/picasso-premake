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
  OBJDIR     = obj/x64/Debug/psxm_image_jpeg
  TARGETDIR  = ../bin/modules
  TARGET     = $(TARGETDIR)/libpsxm_image_jpeg.so
  DEFINES   += -D_DEBUG -DENABLE_FREE_TYPE2=1 -DENABLE_FONT_CONFIG=1 -DEXPORT
  INCLUDES  += -I../include -I../build -I../ext/image_loader -I../third_party/libjpeg-turbo-1.4.1 -I../third_party/libjpeg-turbo-1.4.1/build -I../third_party/libjpeg-turbo-1.4.1/simd
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -g -Wall -msse2 -m64 -fPIC
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -shared -m64 -L/usr/lib64  -Wl,-rpath=../ -L../bin
  LIBS      += -ljpeg -lpsx_image -ldl
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += ../bin/libjpeg.so ../bin/libpsx_image.so
  LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(ARCH) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release64)
  OBJDIR     = obj/x64/Release/psxm_image_jpeg
  TARGETDIR  = ../bin/modules
  TARGET     = $(TARGETDIR)/libpsxm_image_jpeg.so
  DEFINES   += -DNDEBUG -DENABLE_FREE_TYPE2=1 -DENABLE_FONT_CONFIG=1 -DEXPORT
  INCLUDES  += -I../include -I../build -I../ext/image_loader -I../third_party/libjpeg-turbo-1.4.1 -I../third_party/libjpeg-turbo-1.4.1/build -I../third_party/libjpeg-turbo-1.4.1/simd
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -O2 -Wall -msse2 -m64 -fPIC
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -s -shared -m64 -L/usr/lib64  -Wl,-rpath=../ -L../bin
  LIBS      += -ljpeg -lpsx_image -ldl
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += ../bin/libjpeg.so ../bin/libpsx_image.so
  LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(ARCH) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug32)
  OBJDIR     = obj/x32/Debug/psxm_image_jpeg
  TARGETDIR  = ../bin/modules
  TARGET     = $(TARGETDIR)/libpsxm_image_jpeg.so
  DEFINES   += -D_DEBUG -DENABLE_FREE_TYPE2=1 -DENABLE_FONT_CONFIG=1 -DEXPORT
  INCLUDES  += -I../include -I../build -I../ext/image_loader -I../third_party/libjpeg-turbo-1.4.1 -I../third_party/libjpeg-turbo-1.4.1/build -I../third_party/libjpeg-turbo-1.4.1/simd
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -g -Wall -msse2 -m32 -fPIC
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -shared -m32 -L/usr/lib32  -Wl,-rpath=../ -L../bin
  LIBS      += -ljpeg -lpsx_image -ldl
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += ../bin/libjpeg.so ../bin/libpsx_image.so
  LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(ARCH) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release32)
  OBJDIR     = obj/x32/Release/psxm_image_jpeg
  TARGETDIR  = ../bin/modules
  TARGET     = $(TARGETDIR)/libpsxm_image_jpeg.so
  DEFINES   += -DNDEBUG -DENABLE_FREE_TYPE2=1 -DENABLE_FONT_CONFIG=1 -DEXPORT
  INCLUDES  += -I../include -I../build -I../ext/image_loader -I../third_party/libjpeg-turbo-1.4.1 -I../third_party/libjpeg-turbo-1.4.1/build -I../third_party/libjpeg-turbo-1.4.1/simd
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -O2 -Wall -msse2 -m32 -fPIC
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -s -shared -m32 -L/usr/lib32  -Wl,-rpath=../ -L../bin
  LIBS      += -ljpeg -lpsx_image -ldl
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += ../bin/libjpeg.so ../bin/libpsx_image.so
  LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(ARCH) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJECTS := \
	$(OBJDIR)/jpeg_module.o \

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
	@echo Linking psxm_image_jpeg
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
	@echo Cleaning psxm_image_jpeg
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

$(OBJDIR)/jpeg_module.o: ../ext/image_loader/jpeg/jpeg_module.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)