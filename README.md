# Neovim Config

In a quest to make the perfect IDE for vim I am working on the optimum .conf
for it and figured I would back it up here that way I would be able to
pull it down and use it on any machine. my goal is to slowly go through the
conf and work out all the bugs and document more fully here the steps to installation
and debugging, perhaps make a history of the changes made in order to track
what I have done and show how that has effected the ide, and also take some
notes on what it is that it actually does. anyone who is actually reading this
and uses vim for anything, I would love to chat about it and learn more about
how you have yours set up as well! cheers! Happy viming!

## Installation notes thus far

* first install neovim
```
$ brew install neovim
```
* open neovim and from the vim command line run:
```
:checkhealth
```
  * It should tell you anything you may want to fix with your setup.
  * Notably, you will want the python client packages `pip2 install neovim` and `pip3 install neovim`
```
touch ~/.config/nvim/init.vim
```
* then copy/paste contents of init.vim into it
* then run:
  ```
  `npm i -g javascript-typescript-langserver`
  ```
## Usage

A note if you are using this setup, everything should work like normal vim except for a few keys:
 * `Y` works like `D`, `C`, etc in doing to end of line instead of the whole line
 * `:` and `;` were swapped originally, but I couldn't retrain my fingers to get used to this so now it's commented out, but if that is something you are interested in, then go for it!
 * `<space>` is the leader key
 * / defaults to /\v for very magic search every time
 * surround pluggin:
    * `cs)"` change surrounding () to “”
    * `ysiw"` wrap word in “”
    * `S"` to wrap a visual selection in “”
 * autofill `crl-n` and `ctr-p` for next and previous in autofill field, `<tab>` to drop it in
 * code snippets will be dropped in with `<tab>` as well.
 * netrw is primarily accessed by opening a directory or using:
    *  `:Explore` (mapped as `<leader>X` and opens under the current pane)
    *  `:Sexplore`
    *  `:Vexplore`
    *  `:Texplore`
    * `<leader>x` (opens pane to right)
## special thanks to:
* Adam Oswalt, who gave me the inital.conf
* Kyle Hudson, who got me started with this whole vim thing, way too long ago for me to be this bad at it.
