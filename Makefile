TARGET ?= riscv64gc-unknown-none-elf
MODE ?= release

ifeq ($(MODE), release)
	MODE_ARG := --release
endif

build:
	@cargo build --target ${TARGET} $(MODE_ARG)

clean:
	@cargo clean

.PHONY: build clean