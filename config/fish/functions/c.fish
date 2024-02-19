function c
  if ! count $argv > /dev/null
    qalc
    return
  end

  set -l cmd qalc
  for i in $argv
    switch $i
      case "*.c";   set cmd cc
      case "*.cc";  set cmd c++
      case "*.d";   set cmd d
      case "*.tex"; set cmd lualatex
      case "*.pdf"; set cmd cpdf
      case "*.zip"; set cmd unzip
      case "*.tar.*"; set cmd tar xpvf
    end
  end
  $cmd $argv
end
