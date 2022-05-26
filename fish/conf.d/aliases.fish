## my

alias l="ll"
alias v="vim"
alias s="subl"
alias c="qalc"
alias x="hexdump -C"

alias b="HOMEBREW_NO_AUTO_UPDATE=1 brew"
alias dc="docker rm (docker ps -aq); docker network rm (docker network ls -q); docker rmi (docker images -aq);"

alias silicon="silicon --shadow-blur-radius 32"
alias vivaldi="vivaldi-snapshot --force-dark-mode"

## lang

#alias d="rdmd"
alias drepl="dub run -q drepl --"
#alias dfmt="dub run -q dfmt --"
alias dpp="dub run -q dpp --"
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

## rlwrap

alias sqlite="rlwrap sqlite3"
alias ocaml="rlwrap ocaml"
alias gosh="rlwrap gosh"
alias replim="rlwrap replim"
