ifeq (${OS},Windows_NT)
	EXE := .bin/srclib-c.exe
else
	EXE := .bin/srclib-c
endif

.PHONY: install clean

install: ${EXE}

clean: ${EXE}
	rm -rf .bin

${EXE}: main.c
	mkdir .bin
	gcc $^ -o $@
