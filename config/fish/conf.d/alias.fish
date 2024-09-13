alias l="la"
alias p="python3"
alias v="nvim"

alias mk="mkdir -p"
alias mkcd='mk $argv; cd'
alias pr="ps -aux | grep -P"
alias unq='awk \'!a[$0]++\''
alias v-='v "$argv" && c'

alias at="rlwrap at"
alias idris="rlwrap idris2"
alias sqlite="rlwrap sqlite3"

# --------------------------------------------------------------

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
