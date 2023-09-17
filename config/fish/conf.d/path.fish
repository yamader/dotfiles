# lang
set -x BUN_INSTALL ~/.bun
set -x DENO_INSTALL ~/.deno
set -x GOPATH ~/.go
if type -q java-config
  set -x JAVA_HOME (java-config -O)
end
set -x PNPM_HOME ~/.node/pnpm
set -x WASMER_DIR ~/.wasmer

# sdk
set -x ANDROID_HOME ~/SDK/Android
set -x IDF_PATH /usr/share/esp-idf
set -x PICO_SDK_PATH ~/SDK/pico-sdk

# tools
set -x FLYCTL_INSTALL ~/.fly

################################################################

# macOS
if test -d /opt/homebrew
  set BREW_PFIX (/opt/homebrew/bin/brew --prefix)
  fish_add_path -P \
    $BREW_PFIX/bin \
    $BREW_PFIX/sbin \
    $BREW_PFIX/opt/coreutils/libexec/gnubin
end

################################################################

# linker
set -x LD_LIBRARY_PATH \
  ~/SDK/neko \
  /opt/dmd/linux/lib64 \
  $LD_LIBRARY_PATH

# lang
fish_add_path -P \
  /opt/ldc/bin \
  /opt/dmd/linux/bin64 \
  $BUN_INSTALL/bin \
  $JAVA_HOME/bin

# sdk
fish_add_path -P \
  ~/SDK/FPGA/intel_lite_211/quartus/bin \
  ~/SDK/flutter/bin \
  ~/SDK/haxe \
  ~/SDK/neko \
  $ANDROID_HOME/emulator \
  $ANDROID_HOME/platform-tools \
  $ANDROID_HOME/tools \
  $ANDROID_HOME/tools/bin \
  /opt/android-ndk

# pm
fish_add_path -P \
  $GOPATH/bin \
  $PNPM_HOME \
  ~/.cargo/bin \
  ~/.nimble/bin \
  ~/.node/bin \
  ~/.opam/default/bin \
  ~/.pub-cache/bin

# tools
fish_add_path -P \
  $FLYCTL_INSTALL/bin

# local
fish_add_path -P \
  ~/.bin \
  ~/.local/bin
