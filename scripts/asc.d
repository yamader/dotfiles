#!/usr/bin/env rdmd

import std;

auto getCol() {
  import core.sys.posix.sys.ioctl;
  winsize ws;
  if(!ioctl(1, TIOCGWINSZ, &ws))
    return ws.ws_col;
  else
    return 80;
}

auto main() {
  enum block = 0x8;
  enum range = 0x80;

  auto width = block * ((getCol-1) / 5 / block);
  if(!width) width = (getCol-1) / 5;

  const sep = "|----".repeat(width).join ~ '|';
  sep.writeln;
  foreach(i; 0 .. range / width) {
    foreach(j; 0 .. width)
      writef("| %02x ", width*i+j);
    writeln("|");
    foreach(j; 0 .. width)
      try
        writef("| %2c ", cast(char)(width*i+j));
      catch(Throwable)
        write("|    ");
    writeln("|\n", sep);
  }
}
