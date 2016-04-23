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
  OBJDIR     = obj/x64/Debug/picasso2_sw
  TARGETDIR  = ../bin
  TARGET     = $(TARGETDIR)/libpicasso2_sw.so
  DEFINES   += -D_DEBUG -DENABLE_FREE_TYPE2=1 -DENABLE_FONT_CONFIG=1 -DEXPORT
  INCLUDES  += -I../include -I../build -I../src -I../src/include -I../src/simd -I../src/gfx
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -g -Wall -msse2 -m64 -fPIC
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -shared -m64 -L/usr/lib64
  LIBS      += -lfreetype -lfontconfig
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += 
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(ARCH) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release64)
  OBJDIR     = obj/x64/Release/picasso2_sw
  TARGETDIR  = ../bin
  TARGET     = $(TARGETDIR)/libpicasso2_sw.so
  DEFINES   += -DNDEBUG -DENABLE_FREE_TYPE2=1 -DENABLE_FONT_CONFIG=1 -DEXPORT
  INCLUDES  += -I../include -I../build -I../src -I../src/include -I../src/simd -I../src/gfx
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -O2 -Wall -msse2 -m64 -fPIC
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -s -shared -m64 -L/usr/lib64
  LIBS      += -lfreetype -lfontconfig
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += 
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(ARCH) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug32)
  OBJDIR     = obj/x32/Debug/picasso2_sw
  TARGETDIR  = ../bin
  TARGET     = $(TARGETDIR)/libpicasso2_sw.so
  DEFINES   += -D_DEBUG -DENABLE_FREE_TYPE2=1 -DENABLE_FONT_CONFIG=1 -DEXPORT
  INCLUDES  += -I../include -I../build -I../src -I../src/include -I../src/simd -I../src/gfx
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -g -Wall -msse2 -m32 -fPIC
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -shared -m32 -L/usr/lib32
  LIBS      += -lfreetype -lfontconfig
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += 
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(ARCH) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release32)
  OBJDIR     = obj/x32/Release/picasso2_sw
  TARGETDIR  = ../bin
  TARGET     = $(TARGETDIR)/libpicasso2_sw.so
  DEFINES   += -DNDEBUG -DENABLE_FREE_TYPE2=1 -DENABLE_FONT_CONFIG=1 -DEXPORT
  INCLUDES  += -I../include -I../build -I../src -I../src/include -I../src/simd -I../src/gfx
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -O2 -Wall -msse2 -m32 -fPIC
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -s -shared -m32 -L/usr/lib32
  LIBS      += -lfreetype -lfontconfig
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += 
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(ARCH) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJECTS := \
	$(OBJDIR)/clipper.o \
	$(OBJDIR)/curve.o \
	$(OBJDIR)/device.o \
	$(OBJDIR)/fixedopt.o \
	$(OBJDIR)/graphic_path.o \
	$(OBJDIR)/gfx_raster_adapter.o \
	$(OBJDIR)/gfx_font_load_freetype2.o \
	$(OBJDIR)/gfx_sqrt_tables.o \
	$(OBJDIR)/gfx_device.o \
	$(OBJDIR)/gfx_rendering_buffer.o \
	$(OBJDIR)/gfx_image_filters.o \
	$(OBJDIR)/gfx_font_adapter_win32.o \
	$(OBJDIR)/gfx_gradient_adapter.o \
	$(OBJDIR)/gfx_blur.o \
	$(OBJDIR)/gfx_font_adapter_freetype2.o \
	$(OBJDIR)/picasso_api.o \
	$(OBJDIR)/picasso_path.o \
	$(OBJDIR)/picasso_pattern.o \
	$(OBJDIR)/picasso_canvas.o \
	$(OBJDIR)/picasso_gradient.o \
	$(OBJDIR)/picasso_raster_adapter.o \
	$(OBJDIR)/picasso_font_api.o \
	$(OBJDIR)/picasso_matrix.o \
	$(OBJDIR)/picasso_image.o \
	$(OBJDIR)/picasso_mask_api.o \
	$(OBJDIR)/picasso_gradient_api.o \
	$(OBJDIR)/picasso_font.o \
	$(OBJDIR)/picasso_mask.o \
	$(OBJDIR)/picasso_painter.o \
	$(OBJDIR)/picasso_rendering_buffer.o \
	$(OBJDIR)/picasso_matrix_api.o \

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
	@echo Linking picasso2_sw
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
	@echo Cleaning picasso2_sw
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
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
endif

$(OBJDIR)/clipper.o: ../src/core/clipper.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/curve.o: ../src/core/curve.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/device.o: ../src/core/device.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/fixedopt.o: ../src/core/fixedopt.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/graphic_path.o: ../src/core/graphic_path.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/gfx_raster_adapter.o: ../src/gfx/gfx_raster_adapter.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/gfx_font_load_freetype2.o: ../src/gfx/gfx_font_load_freetype2.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/gfx_sqrt_tables.o: ../src/gfx/gfx_sqrt_tables.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/gfx_device.o: ../src/gfx/gfx_device.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/gfx_rendering_buffer.o: ../src/gfx/gfx_rendering_buffer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/gfx_image_filters.o: ../src/gfx/gfx_image_filters.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/gfx_font_adapter_win32.o: ../src/gfx/gfx_font_adapter_win32.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/gfx_gradient_adapter.o: ../src/gfx/gfx_gradient_adapter.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/gfx_blur.o: ../src/gfx/gfx_blur.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/gfx_font_adapter_freetype2.o: ../src/gfx/gfx_font_adapter_freetype2.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/picasso_api.o: ../src/picasso_api.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/picasso_path.o: ../src/picasso_path.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/picasso_pattern.o: ../src/picasso_pattern.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/picasso_canvas.o: ../src/picasso_canvas.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/picasso_gradient.o: ../src/picasso_gradient.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/picasso_raster_adapter.o: ../src/picasso_raster_adapter.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/picasso_font_api.o: ../src/picasso_font_api.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/picasso_matrix.o: ../src/picasso_matrix.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/picasso_image.o: ../src/picasso_image.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/picasso_mask_api.o: ../src/picasso_mask_api.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/picasso_gradient_api.o: ../src/picasso_gradient_api.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/picasso_font.o: ../src/picasso_font.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/picasso_mask.o: ../src/picasso_mask.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/picasso_painter.o: ../src/picasso_painter.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/picasso_rendering_buffer.o: ../src/picasso_rendering_buffer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/picasso_matrix_api.o: ../src/picasso_matrix_api.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)
