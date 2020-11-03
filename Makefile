CC= gcc -std=gnu99
CFLAGS= -g -Wall -Wextra -DLUA_COMPAT_5_2
LDFLAGS= -shared -rdynamic

TARGET= dis.so

all: $(TARGET)

$(TARGET):
	$(CC) -c luadis.c -Iinclude $(CFLAGS)
	$(CC) luadis.o $(LDFLAGS) -o $(TARGET) 

clean:
	rm -f *.o $(TARGET)