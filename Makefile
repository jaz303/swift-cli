TOOLCHAIN 	:= /Applications/Xcode6-Beta.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr
SWIFT 		:= $(TOOLCHAIN)/bin/swift

SRC 		:= $(shell find . -name '*.swift')

a.out: $(SRC)
	$(SWIFT) -o $@ $<
