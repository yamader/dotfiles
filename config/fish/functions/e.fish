function e
  if ! count $argv > /dev/null
    b thunar
    return
  end

  set -l cmd thunar
  for i in $argv
    switch $i
      case "*.pdf";     set cmd zathura
      case "*.svg";     set cmd feh
      case "*.ttf";     set cmd fontforge
      case "*.htm*";    set cmd firefox
      case "*.xls*";    set cmd libreoffice
      case "*.mp4" "*.iso"; set cmd vlc
      case "*.png" "*.jpg" "*.jpeg";
                        set cmd feh -.
    end
  end

  b $cmd $argv
end
