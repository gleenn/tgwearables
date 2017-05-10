.PHONY: all clean verify docker-test install-dependencies

UNISPARKS_URL := https://github.com/unisparks/unisparks/archive/v0.4.tar.gz
SOURCE_DIR := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))
ARDUINO := arduino
ARDUINO_LIB_DIR := ${HOME}/Arduino/libraries
BOARD := esp8266:esp8266:nodemcuv2:FlashSize=4M3M

all: verify

install-dependencies:
	mkdir -p ${ARDUINO_LIB_DIR}/Unisparks
	curl -sL ${UNISPARKS_URL} | tar xvzC ${ARDUINO_LIB_DIR}/Unisparks --strip 1 

verify: install-dependencies
	${ARDUINO} --verify --board ${BOARD} ${SOURCE_DIR}/Ring/Ring.ino}
	${ARDUINO} --verify --board ${BOARD} ${SOURCE_DIR}/Vest/Vest.ino}

docker-test:
	docker run --rm -v ${SOURCE_DIR}:/workspace unisparks/ubuntu 
	#cd /workspace && make all