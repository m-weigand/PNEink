SASSC = sassc -t expanded

GTK30_DEPS = gtk-3.0/apps/ gtk-3.0/common/ gtk-3.0/widgets/ common/
BUILD_DIRS = gnome-shell/ common/ gtk-3.0/

.PHONY: all gtk-3.0/gtk.css gtk-3.0/gtk-dark.css gnome-shell/gnome-shell.css 
all: gtk-3.0/gtk.css gtk-3.0/gtk-dark.css gnome-shell/gnome-shell.css 

gtk-3.0/gtk.css: gtk-3.0/gtk.scss
	$(SASSC) $< $@

gtk-3.0/gtk-dark.css: gtk-3.0/gtk-dark.scss
	$(SASSC) $< $@

gnome-shell/gnome-shell.css: gnome-shell/gnome-shell.scss
	$(SASSC) $< $@


deb-package: debian/ 
	./build_deb_package.sh
