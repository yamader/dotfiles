#include <cxxabi.h>
#include <iostream>
#include <ranges>
#include <string>

struct Line {
  std::string s;

  friend std::istream& operator>>(std::istream& is, Line& l) {
    return std::getline(is, l.s);
  }

  operator std::string() const { return s; }
};

auto main() -> int {
  size_t size = 256;
  auto buf = reinterpret_cast<char*>(std::malloc(size));

  for (std::string line : std::views::istream<Line>(std::cin)) {
    if (not line.length()) break;
    std::cout << abi::__cxa_demangle(line.c_str(), buf, &size, nullptr) << '\n';
  }
}
