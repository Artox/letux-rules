DESTDIR ?= /
RULESDIR ?= lib/udev/rules.d

all:

install-rules: *.rules
	install -v -m755 -d $(DESTDIR)/$(RULESDIR)
	install -v -m644 $? $(DESTDIR)/$(RULESDIR)/

install-scripts: charging.sh
	install -v -m755 -d $(DESTDIR)/$(RULESDIR)
	install -v -m755 $? $(DESTDIR)/$(RULESDIR)/
	
install: install-rules install-scripts
