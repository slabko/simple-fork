all: clean build run

build:
	stack build

run:
	stack exec simple-fork

clean:
	rm -rf .stack-work

log: clean build
	sudo dtruss ./.stack-work/install/x86_64-osx/lts-6.2/7.10.3/bin/simple-fork > logfile.txt 2>&1


