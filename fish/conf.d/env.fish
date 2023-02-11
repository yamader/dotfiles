################################################################
##  VARS
################################################################

set -x EDITOR vim

## lang
#set -x CC clang
#set -x CXX clang++
set RDMDFLAGS \
  -preview=shortenedMethods

## sdk
set -x DOTNET_CLI_TELEMETRY_OPTOUT true
set -x NEXT_TELEMETRY_DISABLED 1

## tools
set -x GPG_TTY (tty)
set -x EIX_LIMIT 0

################################################################
##  ENV
################################################################

## lang
if type -q java-config
  set -x JAVA_HOME (java-config -O)
end
set -x GOPATH ~/.go
set -x WASMER_DIR ~/.wasmer
set -x BUN_INSTALL ~/.bun
set -x DENO_INSTALL ~/.deno

## sdk
set -x ANDROID_HOME ~/SDK/Android
set -x NDK_HOME /opt/android-ndk

## pm
set -x PNPM_HOME ~/.node/pnpm

## tools
set -x FLYCTL_INSTALL ~/.fly

################################################################
##  PATH
################################################################

## ld
set -x LD_LIBRARY_PATH \
	~/SDK/neko \
	/opt/dmd/linux/lib64 \
	$LD_LIBRARY_PATH

## lang
fish_add_path -P \
	~/repos/lang/v \
	/opt/ldc/bin \
	/opt/dmd/linux/bin64 \
	$BUN_INSTALL/bin \
	$JAVA_HOME/bin

## sdk
fish_add_path -P \
	~/SDK/FPGA/intel_lite_211/quartus/bin \
	~/SDK/flutter/bin \
	~/SDK/haxe \
	~/SDK/neko \
  $FLYCTL_INSTALL/bin \
	$ANDROID_HOME/emulator \
	$ANDROID_HOME/tools \
	$ANDROID_HOME/tools/bin \
	$ANDROID_HOME/platform-tools \
	/opt/android-ndk
#	~/SDK/depot_tools

## pm
fish_add_path -P \
	~/.cargo/bin \
	$GOPATH/bin \
	$PNPM_HOME \
	~/.node/bin \
	~/.nimble/bin \
	~/.opam/default/bin \
	~/bin # gem

## local
fish_add_path -P \
	~/.bin \
	~/.local/bin

################################################################
##  macOS
################################################################

set -x HOMEBREW_NO_AUTO_UPDATE 1

if test -d /opt/homebrew
  set BREW_PREF (/opt/homebrew/bin/brew --prefix)
end

fish_add_path -P \
	$BREW_PREF/bin \
	$BREW_PREF/sbin \
	$BREW_PREF/opt/coreutils/libexec/gnubin
