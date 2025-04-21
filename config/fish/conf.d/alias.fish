# cmd
abbr -a - cd -
abbr -a -- -- v "~/.local/share/fish/fish_history"
abbr -a _ prevd
abbr -a cprof p -m cProfile
abbr -a dig drill
abbr -a eq equery
abbr -a h hyx
abbr -a mk mkdir -p
abbr -a pq portageq
abbr -a pzstd zstd -T0
abbr -a s subl
abbr -a serve python -m http.server
abbr -a tf uv run tflocal
abbr -a x hexdump -C

alias cd- "cd \$argv[-1] ;:"
alias l la
alias mkcd "mkdir -p \$argv; cd-"
alias p "uv run python"
alias pip "uv pip"
alias pr "ps -aux | grep -P"
alias unq "awk '!a[\$0]++'"
alias v nvim

function adb -w adb
  command adb -s (command adb devices | awk 'NR == 2 { print $1 }') $argv
end

for cmd in at guile idris2 sqlite3
  abbr -a $cmd rlwrap $cmd
end

# npx
abbr -a sb bunx supabase
abbr -a wr bunx wrangler

# gentoo
abbr -a ei eix -c
abbr -a ei- eix -e
abbr -a m doas emerge
abbr -a m- doas emerge -1 -j1
abbr -a pc pkgcheck scan --net
abbr -a pkc pkgdev commit --signoff
abbr -a pkm pkgdev manifest -f
abbr -a pkp pkgdev push -A
abbr -a ql qlist -e

# git
alias ga  "git add"
alias gaf "git add -f"
alias gbl "git blame"
alias gb  "git branch"
alias gch "git checkout"
alias gcl "git clean -ffdx"
alias gc  "git commit"
alias gam "git commit --amend"
alias gd  "git diff"
alias gds "git diff --staged"
alias gd- "git diff HEAD"
alias gf  "git fetch -p"
alias gi  "git init"
alias gl  "git log"
alias gl- "git log --all --graph"
alias gm  "git merge"
alias gpl "git pull -r --autostash"
alias gp  "git push"
alias gpf "git push --force-with-lease"
alias gpo "git push origin"
alias grb "git rebase"
alias gr  "git reset"
alias grs "git restore"
alias gsh "git show"
alias gs  "git stash"
alias gss "git stash show"
alias gst "git status"
alias gt  "git tag"
alias gw  "git worktree"
alias gwl "git worktree list"
alias gwr "git worktree remove"

function gcm -w "git commit" --description 'alias gcm git commit -m "$argv"'
  git commit -m "$argv"
end

function ge -w "git add" --description 'alias ge git diff $argv && git add'
  git diff $argv && git add $argv
end

function ve -w "ge" --description "alias ve $EDITOR \$argv && ge"
  $EDITOR $argv && ge $argv
end

alias gwc 'git worktree add $argv && cd $argv[1] ;:'
alias gwb 'cd (git worktree list | awk \'NR == 1 { print $1 }\') \
  && git worktree remove (echo $dirprev | awk \'{ print $NF }\')'

# dir
abbr -a bl  --set-cursor '~/Docs/blog/src/content/blog/%'
abbr -a rep --set-cursor '~/Docs/report/%'
abbr -a c-  --set-cursor '~/.config/%'
abbr -a f-  --set-cursor '~/.config/fish/conf.d/%'
abbr -a v-  --set-cursor '~/.config/nvim/%'

for i in ~/*/
  set base (basename $i)
  set abbr (string sub -e 2 $base | string lower)
  abbr -q $abbr || functions -q $abbr || \
    abbr -a $abbr --set-cursor "~/$base/%"
end
