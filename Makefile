MAIN_OBJ := main_test_make.o
TEST_OBJ := test_make.o
TARGET := maintestmake

all:

$(TEST_OBJ): test_make.c
	$(CC) $(CFLAGS) $(LDFLAGS) test_make.c -o test_make.o

$(MAIN_OBJ): main_test_make.c
	$(CC) $(CFLAGS) $(LDFLAGS) main_test_make.c -o main_test_make.o

$(TARGET): main_test_make.o test_make.o
	$(CC) $(CFLAGS) $(LDFLAGS) main_test_make.o test_make.o -o maintestmake

clean: 
	rm -f maintestmake
