C3C = c3c
C3FLAGS = 
OBJS = main.o
PROG = cc33d
LOCALLIBDIR = /usr/local/lib
LDFLAGS = -L $(LOCALLIBDIR)
LDLIBS  = -l interop.a -l ncurses

all: $(PROG)

$(PROG): $(OBJS)
	$(C3C) compile $(C3FLAGS) $(OBJS) -o $@ $(LDLIBS)

main.o: main.c3
	#$(C3C) $(C3FLAGS) compile-only main.c3

clean:
	rm -rf *.o
