# global
set -x EDITOR nvim
set -x LC_COLLATE C

# tools
set -x COREPACK_ENABLE_AUTO_PIN 0
set -x DOTNET_CLI_TELEMETRY_OPTOUT true
set -x EIX_LIMIT 0
set -x EIX_LIMIT_COMPACT 0
set -x HOMEBREW_NO_AUTO_UPDATE 1
set -x NEXT_TELEMETRY_DISABLED 1
set -x TF_CMD tofu

# dirs
set -x ANDROID_HOME ~/SDK/Android
set -x BUN_INSTALL ~/.bun
set -x GOPATH ~/.go
set -x PICO_SDK_PATH ~/SDK/pico-sdk
set -x RLWRAP_HOME ~/.rlwrap

# llvm/mold; cf. /var/db/repos/gentoo/profiles/features/llvm/make.defaults
set -x CC clang
set -x CXX clang++
set -x LD ld.mold
set -x AR llvm-ar
set -x AS clang -c
set -x CPP clang-cpp
set -x NM llvm-nm
set -x STRIP llvm-strip
set -x RANLIB llvm-ranlib
set -x OBJCOPY llvm-objcopy
set -x STRINGS llvm-strings
set -x OBJDUMP llvm-objdump
set -x READELF llvm-readelf
set -x ADDR2LINE llvm-addr2line

#---------------------------------------------------------------

set -x PATH \
  ./vendor/bin \
  ~/.config/guix/current/bin \
  ~/.local/bin \
  ~/.local/share/JetBrains/Toolbox/scripts \
  ~/bin \
  $ANDROID_HOME/platform-tools \
  $ANDROID_HOME/tools \
  $ANDROID_HOME/tools/bin \
  $BUN_INSTALL/bin \
  $GOPATH/bin \
  ~/.cargo/bin \
  ~/.deno/bin \
  ~/.nimble/bin \
  ~/.pub-cache/bin \
  ~/SDK/FPGA/intel_lite_231/quartus/bin \
  ~/SDK/flutter/bin \
  $PATH

#---------------------------------------------------------------

set -x GPG_TTY (tty)

source ~/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

if type -q java-config
  set -x JAVA_HOME (java-config -O)
end

if test -e ~/.gcc
  eval (gcc-config -E (cat ~/.gcc))
end

if test -d /opt/homebrew
  set BREW_PFIX (/opt/homebrew/bin/brew --prefix)
  fish_add_path -P \
    $BREW_PFIX/bin \
    $BREW_PFIX/sbin \
    $BREW_PFIX/opt/coreutils/libexec/gnubin
end
