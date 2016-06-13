#.c和.o建立关联
.SUFFIXES:.c .o 

CC=gcc
#同时编译两个.c文件
SRCS=hello.c\
	add.c

OBJS=$(SRCS:.c=.o)
EXEC=hello
#依赖hello.o add.o
start:$(OBJS)
	$(CC) -o $(EXEC) $(OBJS)
	@echo '--------------ok----------'
#自动根据$(OBJS) 中.o的数量循环编译, 直到编译完所有的.c文件
.c.o:
	$(CC) -o $@ -c $<
	
clean:
	rm -f $(OBJS)
