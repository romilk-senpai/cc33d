module ncurses;

extern fn void initscr();
extern fn void printw(char*, ...);
extern fn void refresh();
extern fn void getch();
extern fn void endwin();
