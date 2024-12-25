SOURCE_FILES := "main_test_make.c test.c"
TARGET := "maintestmake"

$(TARGET): $(SOURCE_FILES)
	$(CC) $(CFLAGS) $(LDFLAGS) $(SOURCE_FILES) -o $(TARGET)

clean: 
	rm -f maintestmake
