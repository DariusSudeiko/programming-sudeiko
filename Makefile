# you can use gcc
CC = clang
# compilier specific options
GCC_SPECIFIC = ""
CLANG_SPECIFIC = -fno-limit-debug-info
# enable all warning checks
WARN = -Wall -Wextra -Werror -Wformat-security -Wfloat-equal -Wshadow -Wconversion -Wlogical-not-parentheses -Wnull-dereference -Wno-unused-variable -Werror=vla
# include the src dir
LAB_OPTS = -I ./src 
# summury compilier options
C_OPTS = -std=gnu11 -g  $(CLANG_SPECIFIC) $(GCC_SPECIFIC) $(LAB_OPTS)
# targets
# make all
all: clean prep compile debug
# clean a destination folder
clean:
	rm -rf dist
# create a destination folder
prep:
	mkdir dist
# compile binary, it depends on the main.bin target
compile: main.bin
# compile binary
main.bin: src/main.c
	$(CC) $(C_OPTS) $< -o ./dist/$@
# run binary, it depends on 3 targets - clean, prep and compile
run: clean prep compile
	./dist/main.bin
# static analysis
check:
	clang-format --verbose -dry-run --Werror src/*
	clang-tidy src/*.c  -checks=-readability-uppercase-literal-suffix,-readability-magic-numbers,-clang-analyzer-deadcode.DeadStores,-clang-analyzer-security.insecureAPI.rand
	rm -rf src/*.dump

debug: compile
	lldb ./dist/main.bin

