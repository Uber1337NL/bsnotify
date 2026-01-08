
PREFIX ?= /usr/local
BINDIR := $(PREFIX)/bin
MANDIR := $(PREFIX)/share/man/man8

install:
	install -m 755 bsnotify $(DESTDIR)$(BINDIR)/bsnotify
	install -m 644 bsnotify.8 $(DESTDIR)$(MANDIR)/bsnotify.8
