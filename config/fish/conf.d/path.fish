set -x GIT_SSH (which --skip-tilde ssh)

# tools
set -x FLYCTL_INSTALL ~/.fly

# sdk
set -x ANDROID_HOME ~/SDK/Android
set -x PICO_SDK_PATH ~/SDK/pico-sdk

# lang
set -x BUN_INSTALL ~/.bun
set -x GOPATH ~/.go
if type -q java-config
  set -x JAVA_HOME (java-config -O)
end

#--------------------------------------------------------------#

# macOS
if test -d /opt/homebrew
  set BREW_PFIX (/opt/homebrew/bin/brew --prefix)
  fish_add_path -P \
    $BREW_PFIX/bin \
    $BREW_PFIX/sbin \
    $BREW_PFIX/opt/coreutils/libexec/gnubin
end

#--------------------------------------------------------------#

# linker
set -x LD_LIBRARY_PATH \
  ~/.root/lib \
  $LD_LIBRARY_PATH
set -x LD_RUN_PATH \
  ~/.root/lib \
  $LD_RUN_PATH

# local
fish_add_path -P \
  ~/.bin \
  ~/.local/bin \
  ~/.root/bin

# pm
fish_add_path -P \
  $BUN_INSTALL/bin \
  $GOPATH/bin \
  ~/.cargo/bin \
  ~/.nimble/bin \
  ~/.npm/bin \
  ~/.opam/default/bin \
  ~/.pub-cache/bin

# sdk
fish_add_path -P \
  $ANDROID_HOME/emulator \
  $ANDROID_HOME/platform-tools \
  $ANDROID_HOME/tools \
  $ANDROID_HOME/tools/bin \
  ~/SDK/flutter/bin \
  ~/SDK/FPGA/intel_lite_231/quartus/bin

# tools
fish_add_path -P \
  $FLYCTL_INSTALL/bin

# rel
set -x PATH $PATH \
  ./vendor/bin
