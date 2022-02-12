function fish_prompt
  set -l last_pipestatus $pipestatus
  set -lx __fish_last_status $status

  set -l color_normal (set_color normal)

  if not set -q prompt_host
    set -g prompt_host ""
    set -q SSH_TTY; and set prompt_host \
      (set_color $fish_color_user)$USER$color_normal"@"(set_color $fish_color_host)(hostname)$color_normal":"
  end

  set -l color_cwd (set_color $fish_color_cwd)
  if command -sq sha256sum
    set -l shas (pwd -P | sha256sum | string sub -l 6 | string match -ra ..)
    set color_cwd (set_color \
      (for f in $shas; math --base=hex "min(255, 0x$f + 0x30)"; end | \
        string replace 0x '' | string pad -c 0 -w 2 | string join ""))
  end

  set -l pwd $color_cwd(prompt_pwd)$color_normal

  set -l prompt_status (__fish_print_pipestatus "[" "]" "|" \
    (set_color $fish_color_status) (set_color --bold $fish_color_status) $last_pipestatus)

  set -l suffix ">"
  fish_is_root_user; and set suffix "#"

  echo -ns $prompt_host $pwd " " $prompt_status $suffix
end

function fish_right_prompt
  set -g __fish_git_prompt_show_informative_status 1
  set -g __fish_git_prompt_use_informative_chars 1

  set -g __fish_git_prompt_showdirtystate 1
  set -g __fish_git_prompt_showuntrackedfiles 1
  set -g __fish_git_prompt_showupstream informative
  set -g __fish_git_prompt_showstashstate 1
  set -g __fish_git_prompt_showcolorhints 1

  set -g __fish_git_prompt_char_cleanstate "✔ "
  set -g __fish_git_prompt_char_dirtystate "💩 "
  set -g __fish_git_prompt_char_invalidstate "🔥 "
  set -g __fish_git_prompt_char_stagedstate "🖋 "
  set -g __fish_git_prompt_char_stashstate "💼 "
  set -g __fish_git_prompt_char_untrackedfiles "❓"
  set -g __fish_git_prompt_char_upstream_ahead "↑ "
  set -g __fish_git_prompt_char_upstream_behind "↓ "

  set -g __fish_git_prompt_color_branch magenta --bold
  set -g __fish_git_prompt_color_cleanstate green --bold
  set -g __fish_git_prompt_color_dirtystate blue
  set -g __fish_git_prompt_color_invalidstate red
  set -g __fish_git_prompt_color_stagedstate yellow
  set -g __fish_git_prompt_color_stashstate $fish_color_normal
  set -g __fish_git_prompt_color_untrackedfiles cyan

  set -l duration $CMD_DURATION
  if test $duration -gt 100
    set duration (math $duration / 1000)s
  else
    set duration
  end

  set -l vcs (fish_vcs_prompt)

  set -l date (set_color brgrey)(date "+%R")(set_color normal)

  set_color reset
  string join " " -- $duration $vcs $date
end
