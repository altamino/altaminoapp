# Makefile — unpack, build, align, sign AltAmino APK
# Usage:
#   make unpack           # apktool decode + jadx decompile of INPUT_APK
#   make decode           # apktool only (smali / res / manifest)
#   make jadx             # jadx only (java sources, read-only view)
#   make build            # full pipeline: apktool -> zipalign -> apksigner
#   make apk              # apktool build only
#   make install          # install signed APK via adb
#   make uninstall        # remove app from device
#   make clean            # remove build artifacts
#   make clean-unpack     # remove unpacked/ (ALL edits in it are lost!)
#
# Vars:
#   INPUT_APK=path.apk    # source APK for unpack (default: original.apk)
#   SRC_DIR=path          # apktool project to build (default: . if apktool.yml
#                         #   is here, otherwise unpacked/apktool)
#   FORCE=1               # allow decode to overwrite existing unpacked/apktool
#
# Env overrides (optional, skips interactive prompts):
#   KEY_ALIAS, KS_PASS, ALIAS_PASS

SHELL         := /bin/bash

KEYSTORE      := altamino.jks
PACKAGE_NAME  := com.narvii.amino.mastes

BUILD_DIR     := build
DIST_DIR      := dist
APK_NAME      := altamino

UNSIGNED_APK  := $(BUILD_DIR)/$(APK_NAME)-unsigned.apk
ALIGNED_APK   := $(BUILD_DIR)/$(APK_NAME)-aligned.apk
SIGNED_APK    := $(DIST_DIR)/$(APK_NAME)-signed.apk

ZIPALIGN      := zipalign
APKSIGNER     := apksigner
APKTOOL       := apktool
JADX          := jadx

# ---- Unpack settings ----
INPUT_APK     ?= original.apk
UNPACK_DIR    := unpacked
APKTOOL_OUT   := $(UNPACK_DIR)/apktool
JADX_OUT      := $(UNPACK_DIR)/jadx
JADX_FLAGS    ?= --show-bad-code
APKTOOL_FLAGS ?=

SRC_DIR       ?= $(if $(wildcard apktool.yml),.,$(APKTOOL_OUT))

.PHONY: all build apk align sign clean install uninstall check-tools \
        unpack decode jadx clean-unpack

.NOTPARALLEL:

all: build


unpack: decode jadx
	@echo ""
	@echo "Done: $(APKTOOL_OUT) (smali/res), $(JADX_OUT) (java)"


decode:
	@command -v $(APKTOOL) >/dev/null 2>&1 || { echo "apktool not found in PATH"; exit 1; }
	@test -f "$(INPUT_APK)" || { echo "APK $(INPUT_APK) not found (make decode INPUT_APK=path/to.apk)"; exit 1; }
	@if [ -d "$(APKTOOL_OUT)" ] && [ -z "$(FORCE)" ]; then \
		echo "$(APKTOOL_OUT) already exists, re-decoding would wipe your edits."; \
		echo "Use FORCE=1 to overwrite, or 'make clean-unpack' first."; \
		exit 1; \
	fi
	@echo "Decoding with apktool..."
	$(APKTOOL) d -f $(APKTOOL_FLAGS) "$(INPUT_APK)" -o $(APKTOOL_OUT)


jadx:
	@command -v $(JADX) >/dev/null 2>&1 || { echo "jadx not found in PATH"; exit 1; }
	@test -f "$(INPUT_APK)" || { echo "APK $(INPUT_APK) not found (make jadx INPUT_APK=path/to.apk)"; exit 1; }
	@echo "Decompiling with jadx..."
	$(JADX) -d $(JADX_OUT) $(JADX_FLAGS) "$(INPUT_APK)"

clean-unpack:
	rm -rf $(UNPACK_DIR)


build: check-tools apk align sign
	@echo ""
	@echo "Done: $(SIGNED_APK)"

check-tools:
	@command -v $(APKTOOL) >/dev/null 2>&1 || { echo "apktool not found in PATH"; exit 1; }
	@command -v $(ZIPALIGN) >/dev/null 2>&1 || { echo "zipalign not found in PATH"; exit 1; }
	@command -v $(APKSIGNER) >/dev/null 2>&1 || { echo "apksigner not found in PATH"; exit 1; }
	@test -f "$(KEYSTORE)" || { echo "Keystore $(KEYSTORE) not found next to Makefile"; exit 1; }
	@test -d "$(SRC_DIR)" || { echo "Source dir $(SRC_DIR) not found (run 'make decode' or set SRC_DIR=)"; exit 1; }
	@mkdir -p $(BUILD_DIR) $(DIST_DIR)

apk: check-tools
	@echo "Building APK with apktool from $(SRC_DIR)..."
	$(APKTOOL) b $(APKTOOL_FLAGS) $(SRC_DIR) -o $(UNSIGNED_APK)

align: $(UNSIGNED_APK)
	@echo "Aligning APK (zipalign)..."
	$(ZIPALIGN) -f -v 4 $(UNSIGNED_APK) $(ALIGNED_APK)

sign: $(ALIGNED_APK)
	@echo "Signing APK..."
	@if [ -z "$$KEY_ALIAS" ]; then read -p "Key alias: " KEY_ALIAS; fi; \
	if [ -z "$$KS_PASS" ]; then read -s -p "Keystore password: " KS_PASS; echo; fi; \
	ALIAS_PASS=$${ALIAS_PASS:-$$KS_PASS}; \
	$(APKSIGNER) sign \
		--ks $(KEYSTORE) \
		--ks-key-alias "$$KEY_ALIAS" \
		--ks-pass pass:"$$KS_PASS" \
		--key-pass pass:"$$ALIAS_PASS" \
		--out $(SIGNED_APK) \
		$(ALIGNED_APK)
	@echo "Verifying signature..."
	$(APKSIGNER) verify $(SIGNED_APK)

install: $(SIGNED_APK)
	adb install -r $(SIGNED_APK)

uninstall:
	adb uninstall $(PACKAGE_NAME) || true

clean:
	rm -rf $(BUILD_DIR) $(DIST_DIR)
