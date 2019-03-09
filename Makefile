
CC      = gcc
CXX     = g++
INSTALL = install
CFLAGS  = -Wall -O3 -D_GNU_SOURCE

PREFIX = /usr/local

SOURCE = NextionDriver.c basicFunctions.c processCommands.c processButtons.c helpers.c

all:	clean NextionDriver

NextionDriver:
	$(CC) $(SOURCE) $(CFLAGS) -o NextionDriver

clean:
	$(RM) NextionDriver *.o *.d *.bak *~

install: NextionDriver
	$(INSTALL) -s NextionDriver $(PREFIX)/bin
