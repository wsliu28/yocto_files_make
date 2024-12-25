MAIN_OBJ := ''
TEST_OBJ := ''
MAIN_SOURCE := ''
TEST_SOUREC := ''
BINDIR := ''
DESTDIR := ''


all: maintestmake

maintestmake: ${MAIN_OBJ} ${TEST_OBJ}
	$(CC) $(CFLAGS) $(LDFLAGS) ${MAIN_OBJ} ${TEST_OBJ} -o maintestmake

${TEST_OBJ}: test_make.c
	$(CC) $(CFLAGS) $(LDFLAGS) -c test_make.c -o ${TEST_OBJ}

${MAIN_OBJ}: main_test_make.c
	$(CC) $(CFLAGS) $(LDFLAGS) -c main_test_make.c -o ${MAIN_OBJ}

install:
	install -d ${DESTDIR}${BINDIR}
	install -m 0755 maintestmake ${DESTDIR}${BINDIR}

clean: 
	rm -f maintestmake
