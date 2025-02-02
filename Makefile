OBJS := build/Main.o
ROM_PATH := build/Eng.gb

OBJS += build/wait.o
OBJS += build/tiles.o
OBJS += build/init.o
OBJS += build/update.o

all: $(ROM_PATH)
	@cp $(ROM_PATH) ..

$(ROM_PATH): $(OBJS)
	@rgblink -o $(ROM_PATH) $(OBJS)
	@rgbfix -v $(ROM_PATH)

build/Main.o: src/Main.asm build
	@rgbasm -o build/Main.o src/Main.asm

build/wait.o: src/wait.asm build
	@rgbasm -o build/wait.o src/wait.asm

build/tiles.o: src/tiles.asm build
	@rgbasm -o build/tiles.o src/tiles.asm

build/init.o: src/init.asm build
	@rgbasm -o build/init.o src/init.asm

build/update.o: src/update.asm build
	@rgbasm -o build/update.o src/update.asm

build:
	@mkdir build

clean:
	@rm -rf build
