# single
alias h="hyx"
alias l="la"
alias p="python3"
alias s="subl"
alias v="nvim"
alias x="hexdump -C"

# more
alias cprof="p -m cProfile"
alias ei-="eix -e"
alias ei="eix -c"
alias eq="equery"
alias lv="NVIM_APPNAME=lazyvim nvim"
alias mk="mkdir"
alias mp="mkdir -p"
alias pq="portageq"
alias pr="ps -aux | grep -P"
alias serve="p -m http.server"
alias si="img2sixel"
alias unq='awk \'!a[$0]++\''
alias v-='v "$argv" && c'

# wrap
alias at="rlwrap at -u $USER"
alias ddox="dub run -q ddox --"
alias dig="drill"
alias dpp="dub run -q dpp --"
alias drepl="dub run -q drepl --"
alias idris="rlwrap idris2"
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
