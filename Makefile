MAIN_OBJ := ''
TEST_OBJ := ''


all: maintestmake

main_test_make: $(MAIN_OBJ) $(TEST_OBJ)
	$(CC) $(CFLAGS) $(LDFLAGS) $(MAIN_OBJ) $(TEST_OBJ) -o main_test_make

$(TEST_OBJ): test_make.c
	$(CC) $(CFLAGS) $(LDFLAGS) -c test_make.c -o $(TEST_OBJ)

$(MAIN_OBJ): main_test_make.c
	$(CC) $(CFLAGS) $(LDFLAGS) -c main_test_make.c -o $(MAIN_OBJ)

install:
	install -d ${DESTDIR}${BINDIR}
	install -m 0755 main_test_make ${DESTDIR}${BINDIR}

clean: 
	rm -f maintestmake
