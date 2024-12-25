MAIN_OBJ := ''
TEST_OBJ := ''
MAIN_TEST_MAKE_SOURCE := ''
TEST_MAKE_SOURCE := ''
TARGET := ''

all: $(TARGET)

$(TARGET): main_test_make.o test_make.o
	$(CC) $(CFLAGS) $(LDFLAGS) main_test_make.o test_make.o -o maintestmake

$(TEST_OBJ): $(TEST_MAKE_SOURCE)
	$(CC) $(CFLAGS) $(LDFLAGS) -c $(TEST_MAKE_SOURCE) -o test_make.o

$(MAIN_OBJ): $(MAIN_TEST_MAKE_SOURCE)
	$(CC) $(CFLAGS) $(LDFLAGS) -c $(MAIN_TEST_MAKE_SOURCE) -o main_test_make.o

install:
	install -d ${DESTDIR}${BINDIR}
	install -m 0755 ${TARGET} ${DESTDIR}${BINDIR}

clean: 
	rm -f maintestmake
