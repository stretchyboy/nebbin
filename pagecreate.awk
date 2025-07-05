#!/usr/bin/awk -f

BEGIN {
  while (getline line < "template.md") {
    fmt = fmt line "\n";
  }
}

{
  file="src/posts/" NR ".md";
  printf(fmt, $1, FNR, FILENAME) > file;
}