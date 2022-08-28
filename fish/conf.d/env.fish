## ENV

source ~/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

#set -x CC clang
#set -x CXX clang++

set RDMDFLAGS \
  -preview=shortenedMethods

set -x EIX_LIMIT 0
set -x HOMEBREW_NO_AUTO_UPDATE 1

if which java-config > /dev/null 2>&1
  set -x JAVA_HOME (java-config -O)
end
if which brew > /dev/null 2>&1
  set -x BREW_PREF (brew --prefix)
end
set -x GOPATH ~/.go
set -x PNPM_HOME ~/.node/pnpm
set -x DENO_INSTALL ~/.deno
set -x BUN_INSTALL ~/.bun
set -x ANDROID_HOME ~/SDK/Android

set -x DOTNET_CLI_TELEMETRY_OPTOUT true

## PATH
fish_add_path -P \
	$BREW_PREF/bin
set -x LD_LIBRARY_PATH ~/SDK/neko \
	$LD_LIBRARY_PATH

### LANG
fish_add_path -P \
	~/repos/lang/v \
	$BUN_INSTALL/bin \
	$JAVA_HOME/bin

### SDK
fish_add_path -P \
	~/SDK/FPGA/intel_lite_211/quartus/bin \
	~/SDK/flutter/bin \
	~/SDK/haxe \
	~/SDK/neko \
	$ANDROID_HOME/emulator \
	$ANDROID_HOME/tools \
	$ANDROID_HOME/tools/bin \
	$ANDROID_HOME/platform-tools \
	/opt/android-ndk
#	~/SDK/depot_tools

### PM
fish_add_path -P \
	~/.cargo/bin \
	$GOPATH/bin \
	$PNPM_HOME \
	~/.node/bin \
	~/.nimble/bin \
	~/.opam/default/bin

### LOCAL
fish_add_path -P \
	~/.bin \
	~/.local/bin
