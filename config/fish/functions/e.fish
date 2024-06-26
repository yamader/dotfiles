function e
  set -l cmd thunar
  for i in $argv
    switch $i
      case "*.pdf"; set cmd zathura
      case "*.svg"; set cmd feh
      case "*.htm*"; set cmd firefox
      case "*.xls*"; set cmd libreoffice
      case "*.png" "*.jpg" "*.jpeg";
        img2sixel $argv
        return
      case "*.mp4"; set cmd mpv
    end
  end
  $cmd $argv 1>/dev/null 2>&1 &
  disown %1
end
