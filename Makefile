OBJS := build/Main.o
ROM_PATH := build/Test.gb

all: $(ROM_PATH)

build/Test.gb: $(OBJS)
	@rgblink -o $(ROM_PATH) $(OBJS)
	@rgbfix -v $(ROM_PATH)

build/Main.o: src/Main.asm build
	@rgbasm -o build/Main.o src/Main.asm

build:
	@mkdir build

clean:
	@rm -rf build
