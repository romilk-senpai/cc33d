#define _XOPEN_SOURCE_EXTENDED
//#define NCURSES_WIDECHAR

//gcc ncurses-test.c -lncursesw -o ncurses-test.out

#include <ncurses.h>
#include <locale.h>
#include <wchar.h>

int main()
{
  setlocale(6, "");
  initscr();
  wchar_t t = L'\u2588';
  char* c = "\u2588";
  //char c = L'\u2588';
  //intf("%c", t);
  //printf(LC_ALL); // 6
  addch('a');
  addch(' ');
  printw("\u2588");
  addch(' ');
  addstr("\u2588");
  addch(' ');
  mvaddstr(10, 10, "\u2588");
  printf("%d", c);
  mvaddstr(15, 55, c);
  addch(' ');
  //addch(t);
  //add_wch(t);
  refresh();
  getch();
  endwin();
  return 0;
}
