#!/usr/bin/env rdmd

import std;

auto main(string[] args) {
  auto f = File(args[1], "wb");
  foreach(chunk; stdin.byChunk(4096))
    f.write(cast(string)chunk);
}
