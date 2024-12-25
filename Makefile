MAIN_OBJ := ''
TEST_OBJ := ''
MAIN_TEST_MAKE_SOURCE := ''
TEST_MAKE_SOURCE := ''


all: maintestmake

$(TARGET): $(MAIN_OBJ) $(TEST_OBJ)
	$(CC) $(CFLAGS) $(LDFLAGS) $(MAIN_OBJ) $(TEST_OBJ) -o main_test_make

$(TEST_OBJ): test_make.c
	$(CC) $(CFLAGS) $(LDFLAGS) -c test_make.c -o $(TEST_OBJ)

$(MAIN_OBJ): main_test_make.c
	$(CC) $(CFLAGS) $(LDFLAGS) -c main_test_make.c -o $(MAIN_OBJ)

install:
	install -d ${DESTDIR}${BINDIR}
	install -m 0755 ${TARGET} ${DESTDIR}${BINDIR}

clean: 
	rm -f maintestmake
