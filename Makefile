###############################################
#
# Makefile
#
###############################################

.DEFAULT_GOAL := build

###############################################

build:
	zig build-exe -O ReleaseFast main.zig

run:
	time ./main

test:
	zig build test --summary all
