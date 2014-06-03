TOOLCHAIN 	:= /Applications/Xcode6-Beta.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr
SWIFT 		:= $(TOOLCHAIN)/bin/swift

SRC 		:= $(shell find . -name '*.swift')
TARGET		:= a.out

.PHONY: clean

clean:
	rm -f $(TARGET)

$(TARGET): $(SRC)
	$(SWIFT) -o $@ $<
