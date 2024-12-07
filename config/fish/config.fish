if status is-interactive
  ufetch
end

if test -e ~/.gcc
  eval (gcc-config -E (cat ~/.gcc))
end

source ~/.opam/opam-init/init.fish > /dev/null 2>/dev/null; or true
