# global
set -x EDITOR nvim
set -x LC_COLLATE C

# dev
set -x CMAKE_INSTALL_PREFIX ~/.root

# tools
set -x COREPACK_ENABLE_AUTO_PIN 0
set -x EIX_LIMIT 0
set -x EIX_LIMIT_COMPACT 0
set -x GPG_TTY (tty)
set -x HOMEBREW_NO_AUTO_UPDATE 1
set -x RLWRAP_HOME ~/.rlwrap

# disable telemetry
set -x DOTNET_CLI_TELEMETRY_OPTOUT true
set -x NEXT_TELEMETRY_DISABLED 1
