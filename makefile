#.cpp和.o建立关联
.SUFFIXES:.cpp .o 

CC=g++
#同时编译两个.cpp文件
SRCS=main.cpp\
	do.cpp

OBJS=$(SRCS:.cpp=.o)
EXEC=doEXE
#依赖main.o do.o
start:$(OBJS)
	$(CC) -o $(EXEC) $(OBJS)
	@echo '--------------ok----------'
#自动根据$(OBJS) 中.o的数量循环编译, 直到编译完所有的.c文件
.c.o:
	$(CC) -o $@ -c $<
	
clean:
	rm -f $(OBJS)
