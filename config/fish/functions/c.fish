function c
  if ! count $argv > /dev/null
    qalc
    return
  end

  set -l cmd less
  for i in $argv
    switch $i
      case "*.c";       set cmd cc
      case "*.cc";      set cmd c++
      case "*.d";       set cmd d
      case "*.js" "*.jsx" "*.ts" "*.tsx";
                        set cmd bun
      case "*.tex";     set cmd lualatex
      case "*.typ";     set cmd typst watch
      case "*.ebuild";  set cmd doas ebuild
      case "*.png" "*.jpg";
                    set cmd img2sixel
    end
  end

  $cmd $argv
end
