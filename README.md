# Dotfile Repository

An attempt to make my dotfiles more modular and version controlled

## Usage with .zshrc

Once you have cloned down the repo and have your base installation of zsh with whatever things
you want configured with it, then you go into the .zshrc in the section where the aliases are
meant to live and put this: 

```
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Moved Alias to ~/workspace/neovimconf/zshrc/.zsh_alias to make things more modular,
# This function will load them from that file

if [ -e $HOME/.zsh_alias ]; then
    source $HOME/.zsh_alias
fi

# Moved Functions out to ~/workspace/neovimconf/zshrc/.zsh_functions as well 
if [ -e $HOME/.zsh_functions ]; then
    source $HOME/.zsh_functions
fi

```

this just basically tells it to source .zsh_alias and .zsh_functions and keeps your .zshrc file short
and sweet, and also you can now just cat those files to remind yourself of what they are instead of 
having to scroll through a huge .zshrc

In order for this to work though there is one more step, and that is to symlink the files to your ~/

```
ln -s /path/to/dotfile/repo/zshrc/.zsh_alias ~/
ln -s /path/to/dotfile/repo/zshrc/.zsh_functions ~/
```
## Usage for nvim

see other README
