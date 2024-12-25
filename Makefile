MAIN_OBJ := main_test_make.o
TEST_OBJ := test_make.o
TARGET := maintestmake

all: main_test_make.o test_make.o
	$(CC) $(CFLAGS) $(LDFLAGS) main_test_make.o test_make.o -o maintestmake

$(TEST_OBJ): test_make.c
	$(CC) $(CFLAGS) $(LDFLAGS) -c test_make.c -o test_make.o

$(MAIN_OBJ): main_test_make.c
	$(CC) $(CFLAGS) $(LDFLAGS) -c main_test_make.c -o main_test_make.o

install:
	install -d ${DESTDIR}${BINDIR}
	install -m 0755 ${TARGET} ${DINDIR}
	
clean: 
	rm -f maintestmake
