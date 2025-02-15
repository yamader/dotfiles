# cmd
abbr -a - cd -
abbr -a -- -- $EDITOR ~/.local/share/fish/fish_history
abbr -a _ prevd
abbr -a cprof p -m cProfile
abbr -a dig drill
abbr -a eq equery
abbr -a h hyx
abbr -a l la
abbr -a mk mkdir -p
abbr -a p uv run python
abbr -a pip uv pip
abbr -a pk pkgdev
abbr -a pq portageq
abbr -a s subl
abbr -a serve p -m http.server
abbr -a tf uv run tflocal
abbr -a v nvim
abbr -a x hexdump -C

alias mkcd='mkdir -p $argv; cd'
alias pr="ps -aux | grep -P"
alias unq='awk \'!a[$0]++\''

function adb -w adb
  command adb -s (command adb devices | awk 'NR == 2 { print $1 }') $argv
end

for cmd in at idris2 sqlite3
  abbr -a $cmd rlwrap $cmd
end

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
abbr -a g   git
abbr -a ga  git add
abbr -a gaf git add -f
abbr -a gbl git blame
abbr -a gb  git branch
abbr -a gch git checkout
abbr -a gcl git clean -ffdx
abbr -a gc  git commit
abbr -a gam git commit --amend
abbr -a gd  git diff
abbr -a gd- git diff HEAD
abbr -a gds git diff --staged
abbr -a gf  git fetch
abbr -a gi  git init
abbr -a gl  git log
abbr -a gl- git log --all --graph
abbr -a gm  git merge
abbr -a gpl git pull -r --autostash
abbr -a gp  git push
abbr -a gpf git push --force-with-lease
abbr -a gpo git push origin
abbr -a grb git rebase
abbr -a gr  git reset
abbr -a grs git restore
abbr -a gsh git show
abbr -a gs  git stash
abbr -a gss git stash show
abbr -a gst git status
abbr -a gt  git tag

abbr -a --set-cursor gcm git commit -m '"%"'

alias ge='git diff $argv && git add'
alias ve='v $argv && ge'

# dir
abbr -a bl  --set-cursor ~/Docs/blog/src/content/blog/%
abbr -a de  --set-cursor ~/dev/%
abbr -a f-  --set-cursor ~/.config/fish/conf.d/%
abbr -a pl  --set-cursor ~/playground/%
abbr -a re  --set-cursor ~/repos/%
abbr -a rep --set-cursor ~/Docs/report/%
