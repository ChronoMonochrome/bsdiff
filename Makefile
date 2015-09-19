CFLAGS		+=	-O3 

PREFIX		?=	/usr/local
INSTALL_PROGRAM	?=	${INSTALL} -c -s -m 555
INSTALL_MAN	?=	${INSTALL} -c -m 444

#CC=gcc
CC=../repos/arm-linux-androideabi-5.1/bin/arm-linux-androideabi-gcc

all:		bsdiff bspatch
bsdiff:		
	$(CC) $(CFLAGS) -I/usr/include bsdiff.c libbz2.a $(LDFLAGS) -o bsdiff
bspatch:
	$(CC) $(CFLAGS) -I/usr/include bspatch.c libbz2.a $(LDFLAGS) -o bspatch

install:
	${INSTALL_PROGRAM} bsdiff bspatch ${PREFIX}/bin

clean:
	rm -f bsdiff bspatch
