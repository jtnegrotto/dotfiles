typeset -U path
path=(
  $HOME/.local/bin
  $HOME/.config/emacs/bin
  $path
)

typeset -U fpath
fpath=(
  $HOME/.rbenv/completions
  $fpath
)

export EDITOR=emacs
