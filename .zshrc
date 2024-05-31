autoload -Uz add-zsh-hook vcs_info compinit
compinit
setopt promptsubst
bindkey -e


# Sets `prompt_workdir` to home-relative, abbreviated working directory
# example: `/home/julien/Code/foo/bar` > `~/C/f/bar`
set_prompt_workdir() {
    local workdir="${PWD/#$HOME/~}"
    local workdir_segments=( ${(s:/:)workdir} )
    local short_workdir_segments=()
    for (( i=1; i <= ${#workdir_segments}; i++ )) do
        segment=${workdir_segments[i]}
        if [[ $i < ${#workdir_segments} ]]; then
            short_workdir_segments+=${segment[1]}
        else
            short_workdir_segments+="$segment"
        fi
    done
    prompt_workdir="${(j./.)short_workdir_segments}"
    if [[ "$PWD" != "$HOME"* ]]; then
        prompt_workdir="/$prompt_workdir"
    fi
}
add-zsh-hook precmd set_prompt_workdir
add-zsh-hook precmd vcs_info
zstyle ':vcs_info:git:*' formats ' %F{red}%b%f%c%u'
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr '%F{green}+%f'
zstyle ':vcs_info:git:*' unstagedstr '%F{yellow}+%f'
export PROMPT='%B%F{cyan}%n%f%F{blue}@%f%F{cyan}%m%f%F{blue}:%f%F{green}${prompt_workdir}%f${vcs_info_msg_0_} %(!.#.>)%b '

alias g=git
alias myip="curl http://ipecho.net/plain; echo"
alias config="git --work-tree=$HOME --git-dir=$HOME/.cfg"


# Initialize misc. utilities (version managers, etc.)

# ruby version manager
eval "$($HOME/.rbenv/bin/rbenv init - zsh)"

# node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# fly.io command-line tools
export FLYCTL_INSTALL="$HOME/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
