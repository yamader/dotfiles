function e
  set -l cmd thunar
  for i in $argv
    switch $i
      case "*.pdf"; set cmd zathura
      case "*.png" "*.jpg";
        img2sixel $argv
        return
    end
  end
  $cmd $argv &
  disown %1
end
