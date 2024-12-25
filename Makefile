MAIN_OBJ := ''
TEST_OBJ := ''
MAIN_SOURCE := ''
TEST_SOUREC := ''
BINDIR := ''
DESTDIR := ''


all: maintestmake

maintestmake: ${MAIN_OBJ} ${TEST_OBJ}
	$(CC) $(CFLAGS) $(LDFLAGS) ${MAIN_OBJ} ${TEST_OBJ} -o maintestmake

${TEST_OBJ}: ${TEST_SOURCE}
	$(CC) $(CFLAGS) $(LDFLAGS) -c ${TEST_SOURCE} -o ${TEST_OBJ}

${MAIN_OBJ}: ${MAIN_SOURCE}
	$(CC) $(CFLAGS) $(LDFLAGS) -c ${MAIN_SOURCE} -o ${MAIN_OBJ}

install:
	install -d ${DESTDIR}${BINDIR}
	install -m 0755 maintestmake ${DESTDIR}${BINDIR}

clean: 
	rm -f maintestmake
