# Configuration

I'm making an effort to streamline my development environment and make it a
little more portable (in the sense that I can replicate it on a new laptop
fairly easily).

I don't recommend anyone else use my setup, but you might find something here
to reuse for yourself.

## Usage

Initial setup is pretty painless:

```sh
# clone this as a bare repo to $HOME/src/dotfiles
git clone --bare https://github.com/jtnegrotto/dotfiles.git $HOME/src/dotfiles
# set alias explicitly this session, it will be picked up from .zshrc later
alias dot="git --git-dir=$HOME/src/dotfiles --work-tree=$HOME"
# configure repo to ignore untracked files
dot config --local status.showUntrackedFiles no
# check out the code
dot checkout
```

After this, usage is straightforward; just use `dot` in place of `git`, such as
`dot add $FILE`, `dot commit`, `dot push origin master`, etc.
