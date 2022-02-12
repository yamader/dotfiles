## my

alias l="ll"
alias v="vim"
alias s="subl"
alias b="HOMEBREW_NO_AUTO_UPDATE=1 brew"
alias dc="docker rm (docker ps -aq); docker network rm (docker network ls -q); docker rmi (docker images -aq);"
alias silicon="silicon --shadow-blur-radius 32"

function llatex-watch
  fswatch -b --event=Updated $argv[1] | xargs -n1 lualatex
end

## lang

alias d="rdmd"
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

alias ocaml="rlwrap ocaml"
alias gosh="rlwrap gosh"
alias replim="rlwrap replim"
