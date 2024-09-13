module main;

import libc;
import std::io;
import std::thread;

import ncurses;

extern fn char* setlocale(int, char*);

bool running = true;

const int SCREEN_WIDTH = 132;
const int SCREEN_HEIGHT = 43;
char* wall = "\u2588";

fn void render()
{
  double aspect = (double)SCREEN_WIDTH / SCREEN_HEIGHT;
  double symbol_aspect = 9.0 / 21.0;
  
  for (int i = 0; i < SCREEN_WIDTH; i++)
  {
    for (int j = 0; j < SCREEN_HEIGHT; j++)
    {
      double x = (double)i / SCREEN_WIDTH * 2.0 - 1.0;
      double y = (double)j / SCREEN_HEIGHT * 2.0 - 1.0;
      x *= aspect * symbol_aspect;
      char* symbol = " ";
      if (x * x + y * y < 0.5)
      {
	symbol = wall;
      }
      
      ncurses::mvaddstr(j, i, symbol);
    }
  }
  
  ncurses::refresh();
}

fn int main(String[] argv)
{
  setlocale(6, "");

  ncurses::initscr();

  render();
  
  ncurses::getch();
  ncurses::endwin();
  
  return 0;
}
