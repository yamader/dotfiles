function fish_prompt
  set -l last_status $status

  set -l normal (set_color normal)
  set -l usercolor (set_color $fish_color_user)

  set -l delim ";"
  fish_is_root_user; and set delim "#"

  set -l cwd (set_color $fish_color_cwd)
  if command -sq cksum
    # randomized cwd color
    set -l shas (pwd -P | cksum | string split -f1 " " | math --base=hex | string sub -s 3 | string pad -c 0 -w 6 | string match -ra ..)
    set -l col 0x$shas[1..3]
    while test (math 0.2126 x $col[1] + 0.7152 x $col[2] + 0.0722 x $col[3]) -lt 120
      set col[1] (math --base=hex "min(255, $col[1] + 60)")
      set col[2] (math --base=hex "min(255, $col[2] + 60)")
      set col[3] (math --base=hex "min(255, $col[3] + 60)")
    end
    set -l col (string replace 0x "" $col | string pad -c 0 -w 2 | string join "")
    set cwd (set_color $col)
  end

  # Prompt status only if it's not 0
  set -l prompt_status
  test $last_status -ne 0; and set prompt_status (set_color $fish_color_status)"[$last_status]$normal"

  # Only show host if in SSH or container
  if not set -q prompt_host
    set -g prompt_host ""
    if set -q SSH_TTY
      or begin
        command -sq systemd-detect-virt
        and systemd-detect-virt -q
      end
      set prompt_host $usercolor$USER$normal@(set_color $fish_color_host)$hostname$normal":"
    end
  end

  # Shorten pwd if prompt is too long
  set -l pwd (prompt_pwd)

  echo -ns ": " $prompt_host $cwd $pwd $normal $prompt_status $delim
end

function fish_right_prompt
  set -g __fish_git_prompt_show_informative_status 1
  set -g __fish_git_prompt_showcolorhints 1
  set -g __fish_git_prompt_showdirtystate 1
  set -g __fish_git_prompt_showstashstate 1
  set -g __fish_git_prompt_showuntrackedfiles 1
  set -g __fish_git_prompt_showupstream informative
  set -g __fish_git_prompt_use_informative_chars 1

  set -g __fish_git_prompt_char_cleanstate "✔ "
  set -g __fish_git_prompt_char_dirtystate "💩"
  set -g __fish_git_prompt_char_invalidstate "🔥"
  set -g __fish_git_prompt_char_stagedstate "🖋"
  set -g __fish_git_prompt_char_stashstate "💼"
  set -g __fish_git_prompt_char_untrackedfiles "❓"

  set -g __fish_git_prompt_color_branch magenta --bold
  set -g __fish_git_prompt_color_cleanstate green --bold
  set -g __fish_git_prompt_color_dirtystate blue
  set -g __fish_git_prompt_color_invalidstate red
  set -g __fish_git_prompt_color_stagedstate yellow
  set -g __fish_git_prompt_color_stashstate $fish_color_normal
  set -g __fish_git_prompt_color_untrackedfiles cyan

  set -l bang (set_color 444)\#(set_color normal)

  # The git prompt's default format is " (%s)".
  set -l vcs (fish_vcs_prompt "$bang(%s)" 2>/dev/null)

  set -l duration "$cmd_duration$CMD_DURATION"
  if test $duration -gt 100
    set duration $bang(math $duration / 1000)s
  else
    set duration
  end

  set_color normal
  echo -ns $duration $vcs
end
