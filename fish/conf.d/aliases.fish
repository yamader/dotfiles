## my

alias l="ll"
alias s="subl"
alias c="qalc"
alias x="hexdump -C"
alias rp="realpath"
alias psre="ps -aux | grep -P"

alias six="img2sixel"
alias serve="p -m http.server"
alias dc="docker system prune"

alias silicon="silicon --shadow-blur-radius 32"
alias vivaldi="vivaldi --force-dark-mode"

## os specific

alias eq="equery"
alias pq="portageq"

## llvm and mold

alias cc="clang"
alias c++="clang++"
alias ld="ld.mold"

alias ar="llvm-ar"
alias as="clang -c"
alias cpp="clang-cpp"
alias nm="llvm-nm"
alias strip="llvm-strip"
alias ranlib="llvm-ranlib"
alias objcopy="llvm-objcopy"
alias strings="llvm-strings"
alias objdump="llvm-objdump"
alias readelf="llvm-readelf"
alias addr2line="llvm-addr2line"

## lang

alias drepl="dub run -q drepl --"
# LIBRARY_PATH=/usr/lib/llvm/14/lib64 dub fetch dpp
alias dpp="dub run -q dpp --"
alias ddox="dub run -q ddox --"
alias p="bpython"
alias pip="p -m pip"

## git

alias ga="git add"
alias gb="git branch"
alias gbs="git bisect"
alias gc="git commit -S"
alias gch="git checkout"
alias gcp="git cherry-pick"
alias gd="git diff"
alias gl="git log"
alias gm="git merge"
alias gp="git push"
alias gpf="git push --force-with-lease"
alias gs="git stash"
alias gt="git tag"
alias gr="git reset"
alias grb="git rebase"
alias grs="git restore"

## rlwrap

alias at="rlwrap at -u $USER"
alias sqlite="rlwrap sqlite3"
alias ocaml="rlwrap ocaml"
alias gosh="rlwrap gosh"
alias replim="rlwrap replim"
