.PHONY: install

osd_box_sel: osd_box_sel.cpp
	g++ -g -O0 -o $@ $< `pkg-config --cflags --libs x11 xext`

install: osd_box_sel
	cp osd_box_sel win_sel $${HOME}/bin/
