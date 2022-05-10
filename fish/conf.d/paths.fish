## my

set -x JAVA_HOME /opt/openjdk-bin-17

set -x GOPATH ~/.go
set -x PNPM_HOME ~/.node/pnpm
set -x ANDROID_HOME ~/SDK/Android

## ENV

source ~/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

## PATH

set -x LD_LIBRARY_PATH ~/SDK/neko \
	$LD_LIBRARY_PATH

set -x PATH ~/.bin \
	~/.local/bin \
	~/.node/bin \
	~/.cargo/bin \
	~/.nimble/bin \
	~/.opam/default/bin \
	~/.pub-cache/bin \
	~/SDK/flutter/bin \
	~/SDK/depot_tools \
	~/SDK/haxe \
	~/SDK/neko \
	$PNPM_HOME \
	$GOPATH/bin \
	$JAVA_HOME/bin \
	$ANDROID_HOME/emulator \
	$ANDROID_HOME/tools \
	$ANDROID_HOME/tools/bin \
	$ANDROID_HOME/platform-tools \
	/opt/android-ndk \
	$PATH
