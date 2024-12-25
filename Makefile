#MAIN_OBJ := ''
#TEST_OBJ := ''
BINDIR := ''
DESTDIR := ''


all: maintestmake

maintestmake: main_test_make.o test_make.o
	$(CC) $(CFLAGS) $(LDFLAGS) main_test_make.o test_make.o -o maintestmake

test_make.o: test_make.c
	$(CC) $(CFLAGS) $(LDFLAGS) -c test_make.c -o test_make.o

main_test_make.o: main_test_make.c
	$(CC) $(CFLAGS) $(LDFLAGS) -c main_test_make.c -o main_test_make.o

install:
	install -d ${DESTDIR}${BINDIR}
	install -m 0755 maintestmake ${DESTDIR}${BINDIR}

clean: 
	rm -f maintestmake
