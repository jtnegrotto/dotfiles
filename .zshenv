typeset -U path
path=(
  $HOME/.local/bin
  $HOME/.config/emacs/bin
  $path
)
export EDITOR=emacs
