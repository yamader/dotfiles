if status is-interactive
  ufetch
end

################################################################
##  DEV
################################################################

if test -e ~/.gcc
  eval (gcc-config -E (cat ~/.gcc))
end

source $WASMER_DIR/wasmer.sh > /dev/null 2>/dev/null; or true

source ~/.opam/opam-init/init.fish > /dev/null 2>/dev/null; or true
