module ncurses;

extern fn void initscr();
extern fn void printw(char*);
extern fn void addch(char);
extern fn void addstr(char*);
extern fn void mvaddch(char*);
extern fn void mvaddstr(CInt, CInt, char*);
extern fn void refresh();
extern fn void getch();
extern fn void endwin();
