all:
	$(CC) $(CFLAGS) $(LDFLAGS) main_test_make.c test_make.c -o maintestmake

clean: 
	rm -f maintestmake
