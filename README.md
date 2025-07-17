# PNEink - Theme for Gnome shell

PNEink is a light, high-contrast theme for the gnome shell, intended for use on
EInk displays. It was built specifically for the Pine64 PineNote-EInk-Tablet.

## Installation

### Local installation

Just clone the repo inside *'~/.themes'*. After that you can select *PNEink* as
shell theme in *gnome-tweaks*.

### Global installation

Clone to /usr/share/themes

## Modifications

In general, make sure to first modify the source css (.scss) files, and then
regenerate the corresponding .css file, e.g.:

```
$ make all
sassc -t expanded gtk-3.0/gtk.scss gtk-3.0/gtk.css
sassc -t expanded gtk-3.0/gtk-dark.scss gtk-3.0/gtk-dark.css
sassc -t expanded gnome-shell/gnome-shell.scss gnome-shell/gnome-shell.css
```


### Looking Glass

The built-in debugger can help to identify entities that you want to modify:

https://gitlab.gnome.org/GNOME/gnome-shell/-/blob/main/docs/debugging.md?ref_type=heads#looking-glass

## Debian Packaging

	dh_make -p pneink_1.0 --indep -c custom --copyrightfile "${PWD}"/LICENSE --createorig
	$ cat debian/pneink.install
		gnome-shell /usr/share/themes/pneink/
		common /usr/share/themes/pneink/
		gtk-3.0 /usr/share/themes/pneink/
	dpkg-buildpackage -us -uc
	dpkg --contents ../pneink_1.0-1_all.deb
