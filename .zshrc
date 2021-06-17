##### basic options #####
 
unsetopt beep # don't beep on errors
setopt autocd # change to a directory by typing its name (without cd)
setopt notify # immediately report background job status instead of waiting for a prompt
bindkey -e # emacs-style keybindings (I prefer these in my terminal emulator)
 
# history settings
HISTFILE=~/.cache/history # history file location
HISTSIZE=999999999 # practically unlimited history (in memory)
SAVEHIST=$HISTSIZE # same on disk
setopt appendhistory # append to $HISTFILE instead of overwriting

# command completion
autoload -Uz compinit
compinit


##### set envvars and configure/run other programs #####

export PAGER=most
export EDITOR=nvim

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PATH="$HOME/.ebcli-virtual-env/executables:$PATH"

# makes it a little easier to get some programs to "just work"
export TERM=xterm-256color

# prompt
function gitprompt() {
  if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    branch="$(git rev-parse --abbrev-ref HEAD 2>/dev/null)"
    echo " %F{red}($branch)%f"
  fi
}
setopt prompt_subst
export PROMPT='%B%n@%m:%F{green}%~%f$(gitprompt) %(!.#.$)%b '

# ssh agent
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
if [ -z "$SSH_AUTH_SOCK" ]; then
  eval `ssh-agent -s`
fi


##### aliases #####

alias ls="ls --color -l"

alias grep="grep --color"

alias v=nvim

alias zathura='setsid -f zathura'

# dotfiles mgmt
alias dot="git --git-dir=$HOME/src/dotfiles/ --work-tree=$HOME"

