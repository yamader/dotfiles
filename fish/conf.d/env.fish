## ENV

source ~/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

set -x JAVA_HOME (java-config -O)
set -x GOPATH ~/.go
set -x PNPM_HOME ~/.node/pnpm
set -x DENO_INSTALL ~/.deno
set -x BUN_INSTALL ~/.bun
set -x ANDROID_HOME ~/SDK/Android

set -x DOTNET_CLI_TELEMETRY_OPTOUT true

## PATH

set -x LD_LIBRARY_PATH ~/SDK/neko \
	$LD_LIBRARY_PATH

### LANG
set -x PATH \
	~/repos/lang/v \
	$BUN_INSTALL/bin \
	$JAVA_HOME/bin \
	$PATH

### SDK
set -x PATH \
	~/SDK/FPGA/intel_lite_211/quartus/bin \
	~/SDK/flutter/bin \
	~/SDK/haxe \
	~/SDK/neko \
	$ANDROID_HOME/emulator \
	$ANDROID_HOME/tools \
	$ANDROID_HOME/tools/bin \
	$ANDROID_HOME/platform-tools \
	/opt/android-ndk \
#	~/SDK/depot_tools \
	$PATH

### PM
set -x PATH \
	~/.cargo/bin \
	$GOPATH/bin \
	$PNPM_HOME \
	~/.node/bin \
	~/.nimble/bin \
	~/.opam/default/bin \
	$PATH

### MISC
set -x PATH \
	~/.bin \
	~/.local/bin \
	$PATH
