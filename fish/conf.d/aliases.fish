## my

alias l="ll"
alias s="subl"
alias c="qalc"
alias x="hexdump -C"

alias serve="python3 -m http.server"
alias dc="docker system prune"

alias at="rlwrap at -u $USER"
alias silicon="silicon --shadow-blur-radius 32"
alias vivaldi="vivaldi-snapshot --force-dark-mode"

## os specific

alias eq="equery"
alias pq="portageq"
alias b="HOMEBREW_NO_AUTO_UPDATE=1 brew"

## llvm

alias cc="clang"
alias c++="clang++"
alias as="llvm-as"
alias ld="ld.lld"

alias objdump="llvm-objdump"
alias objcopy="llvm-objcopy"
alias undname="llvm-undname"
alias strip="llvm-strip"
alias size="llvm-size"
alias nm="llvm-nm"
alias ar="llvm-ar"

## lang

#alias d="rdmd"
alias drepl="dub run -q drepl --"
#alias dfmt="dub run -q dfmt --"
# LIBRARY_PATH=/usr/lib/llvm/14/lib64 dub fetch dpp
alias dpp="dub run -q dpp --"
alias ddox="dub run -q ddox --"
alias p="python"

## git

alias ga="git add"
alias gb="git branch"
alias gc="git commit -S"
alias gch="git checkout"
alias gd="git diff"
alias gl="git log"
alias gm="git merge"
alias gp="git push"
alias gs="git stash"
alias gt="git tag"
alias gr="git reset"
alias grb="git rebase"

## rlwrap

alias sqlite="rlwrap sqlite3"
alias ocaml="rlwrap ocaml"
alias gosh="rlwrap gosh"
alias replim="rlwrap replim"
