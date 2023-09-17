# single
alias l="ll"
alias p="ipython --no-confirm-exit"
alias s="subl"
alias v="vim"
alias x="hexdump -C"

# double
alias dc="docker system prune"
alias eq="equery"
alias si="img2sixel"
alias pq="portageq"
alias pr="ps -aux | grep -P"

# more
alias serve="p -m http.server"
alias cprof="p -m cProfile"

# wrap
alias at="rlwrap at -u $USER"
alias ddox="dub run -q ddox --"
alias dpp="dub run -q dpp --"
alias drepl="dub run -q drepl --"
alias gosh="rlwrap gosh"
alias ocaml="rlwrap ocaml"
alias pip="p -m pip"
alias replim="rlwrap replim"
alias sqlite="rlwrap sqlite3"

################################################################

# dev
# cf. /var/db/repos/gentoo/profiles/features/llvm/make.defaults

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
