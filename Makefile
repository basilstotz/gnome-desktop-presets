PHONY: all
all: package

.PHONY: package
package:
	@find . -name gnome-desktop-presets_\*_amd64.deb -exec rm \{\} \;
	@./bin/package.sh

