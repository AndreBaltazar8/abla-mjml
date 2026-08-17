PROJECT_DIR := $(abspath .)
ABLAC_DIR ?= $(abspath ../ablac)
COMPILER ?= $(ABLAC_DIR)/build/ablac
BUILD_DIR ?= $(PROJECT_DIR)/build

.PHONY: all test clean

all: test

test:
	mkdir -p $(BUILD_DIR)
	cd $(PROJECT_DIR) && $(COMPILER) build $(PROJECT_DIR)/tests/mjml_test.ab -o $(BUILD_DIR)/mjml-test --no-cache
	cd $(PROJECT_DIR) && $(BUILD_DIR)/mjml-test

clean:
	@if [ -d "$(BUILD_DIR)" ]; then gio trash "$(BUILD_DIR)"; fi
