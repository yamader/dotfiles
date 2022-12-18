set -x EDITOR vim

set -x GPG_TTY (tty)

#ufetch

# gcc
if test -e ~/.gcc
  eval (gcc-config -E (cat ~/.gcc))
end
