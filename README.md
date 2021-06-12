# Sam's Dotfiles

- [Mac setup](./docs/macbook-process.md)

## Setting Up

All these files are managed using [https://www.gnu.org/software/stow/](GNU's stow). It was originally made to keep different versions of programs organized neatly, but ends up working well as a kind of symlink manager. To link up files just run: 

(NOTE: Make sure that this repo is directly in your home directory)

```
$ stow <directory>
```
For example, if you want to link up my vim files, you could run:
```
$ stow vim
```
To link everything up at once, you can just string the arguments together:
```
$ stow emacs  git  i3  scripts  tmux  vim  x  zsh
```

