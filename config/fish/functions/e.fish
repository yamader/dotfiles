function e
  set -l cmd thunar
  for i in $argv
    switch $i
      case "*.pdf"; set cmd zathura
      case "*.html"; set cmd firefox
      case "*.svg"; set cmd firefox
      case "*.xlsx"; set cmd libreoffice
      case "*.png" "*.jpg";
        img2sixel $argv
        return
    end
  end
  $cmd $argv 1>/dev/null 2>&1 &
  disown %1
end
