C3C = c3c
C3FLAGS = 
OBJS = 
PROG = cc33d
LOCALLIBDIR = /usr/local/lib
LDFLAGS = -L $(LOCALLIBDIR)
LDLIBS  = -l ncursesw

all: $(PROG)

$(PROG):
	$(C3C) compile $(C3FLAGS) $(LDFLAGS) $(LDLIBS) ncurses.c3 main.c3 -o cc33d.out

clean:
	rm -rf *.o
