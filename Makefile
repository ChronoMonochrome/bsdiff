CFLAGS		+=	-O3 
LDFLAGS		+=	-lbz2

PREFIX		?=	/usr/local
INSTALL_PROGRAM	?=	${INSTALL} -c -s -m 555
INSTALL_MAN	?=	${INSTALL} -c -m 444

CC=gcc

all:		bsdiff bspatch
bsdiff:		
	$(CC) $(CFLAGS) bsdiff.c $(LDFLAGS) -o bsdiff
bspatch:
	$(CC) $(CFLAGS) bspatch.c $(LDFLAGS) -o bspatch

install:
	${INSTALL_PROGRAM} bsdiff bspatch ${PREFIX}/bin
