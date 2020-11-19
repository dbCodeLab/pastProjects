# use make BUILD_TYPE=release to build the release version
# make run ARGS="1024 768" or make run BUILD_TYPE=release ARGS="1024 768"
# use -DSHM_EXT to enable the shm
# use -g -O0 to debug (https://stackoverflow.com/questions/2324602/no-source-available-for-main-error-when-debugging-simple-c-in-eclipse-with)

BUILD_TYPE := debug
TARGET_EXEC ?= a.out

#####################################################################
COMPILER=gcc
CXX.gcc := g++
#CC.gcc := gcc

CXX := ${CXX.${COMPILER}}
#CC := ${CC.${COMPILER}}

CXXFLAGS.gcc.debug := -g -O0 -fstack-protector-all
CXXFLAGS.gcc.release := -O3 -march=native -DNDEBUG
#CXXFLAGS.gcc := -pthread -std=gnu++14 -march=native -W{all,extra,error} -g -fmessage-length=0 ${CXXFLAGS.gcc.${BUILD}}
CXXFLAGS.gcc := -march=native -Wall -Wextra -fmessage-length=0 ${CXXFLAGS.gcc.${BUILD_TYPE}}

CXXFLAGS := ${CXXFLAGS.${COMPILER}}
#CFLAGS := ${CFLAGS.${COMPILER}}

LDFLAGS.debug :=
LDFLAGS.release :=
LDFLAGS := ${LDFLAGS.${BUILD_TYPE}}
LDLIBS := -lX11 -lXt -lXext -lXmu -lm

#####################################################################

BUILD_ROOT ?= ./build
BUILD_DIR ?= $(BUILD_ROOT)/$(BUILD_TYPE)
SRC_DIRS ?= ./src

TARGET = $(BUILD_DIR)/$(TARGET_EXEC)

SRCS := $(shell find $(SRC_DIRS) -name *.cc -or -name *.c -or -name *.s)
OBJS := $(SRCS:%=$(BUILD_DIR)/%.o)
DEPS := $(OBJS:.o=.d)

INC_DIRS := $(shell find $(SRC_DIRS) -type d)
INC_FLAGS := $(addprefix -I,$(INC_DIRS))

CPPFLAGS ?= $(INC_FLAGS) -MMD -MP

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(OBJS) -o $@ $(LDFLAGS) $(LDLIBS)

# assembly
#$(BUILD_DIR)/%.s.o: %.s
#	$(MKDIR_P) $(dir $@)
#	$(AS) $(ASFLAGS) -c $< -o $@

## c source
#$(BUILD_DIR)/%.c.o: %.c
#	$(MKDIR_P) $(dir $@)
#	$(CC) $(CPPFLAGS) $(CFLAGS) -c $< -o $@

# c++ source
$(BUILD_DIR)/%.cc.o: %.cc
	$(MKDIR_P) $(dir $@)
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -c $< -o $@

.PHONY: clean $(BUILD_ROOT)

clean:
	$(RM) -r ./build

run: $(TARGET)
	./$(TARGET) $(ARGS)

-include $(DEPS)

MKDIR_P ?= mkdir -p

#####################################################################

# makefile howto:
# https://spin.atomicobject.com/2016/08/26/makefile-c-projects/
# see https://stackoverflow.com/questions/48791883/best-practice-for-building-a-make-file/48793058#48793058
# https://makefiletutorial.com/

#see https://stackoverflow.com/questions/495598/difference-between-cppflags-and-cxxflags-in-gnu-make
#CPPFLAGS # CPPFLAGS is supposed to be for flags for the C PreProcessor; CXXFLAGS is for flags for the C++ compiler.


