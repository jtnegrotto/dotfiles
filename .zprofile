export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_RUNTIME_DIR="/run/user/$UID"

export PATH="$HOME/.local/bin:$PATH"

[ "$(tty)" = "/dev/tty1" ] && exec sx

