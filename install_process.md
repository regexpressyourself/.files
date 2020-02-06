## Homebrew packages

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install yarn tmux zsh emacs neovim pandoc ripgrep tree
```

## NPM/yarn setup

```
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
yarn global add prettier gulp eslint webpack webpack-cli diff-so-fancy lorem-ipsum
```

## Config files

```
git clone https://www.github.com/regexpressyourself/.files.git ~/dotfiles &&
cd  ~/dotfiles &&
stow emacs  &&
stow git  &&
stow i3  &&
stow scripts  &&
stow termite  &&
stow tmux  &&
stow vim  &&
stow x  &&
stow zsh &&
stow pics &&
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
```

## cURL installs

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" &&
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim &&
```

## Applications

[alfred](https://www.alfredapp.com/)
[amphetamine](https://apps.apple.com/us/app/amphetamine/id937984704?mt=12)
[chrome](https://www.google.com/chrome/)
[chunkwm](https://koekeishiya.github.io/chunkwm/docs.html)
[dbeaver](https://dbeaver.io/download/)
[docker](https://docs.docker.com/docker-for-mac/install/)
[filezilla](https://filezilla-project.org/download.php)
[firefox](https://www.mozilla.org/en-US/firefox/new/)
[flux](https://justgetflux.com/)
[gimp](https://www.gimp.org/downloads/)
[gitkraken](https://www.gitkraken.com/download)
[helium](https://apps.apple.com/us/app/helium/id1054607607?mt=12)
[imageoptim](https://imageoptim.com/mac)
[iterm2](https://www.iterm2.com/downloads.html)
[latex](http://www.tug.org/mactex/)
[muzzle](https://muzzleapp.com/)
[node](https://nodejs.org/en/download/)
[nord VPN](https://nordvpn.com/download/mac/)
[postman](https://www.postman.com/downloads/)
[screaming frog](https://www.screamingfrog.co.uk/seo-spider/#)
[tunnelblick](https://tunnelblick.net/downloads.html)
[virtualbox](https://www.virtualbox.org/wiki/Downloads)
[vlc](https://www.videolan.org/vlc/download-macosx.html)
[vs code](https://code.visualstudio.com/download)
[wally](https://ergodox-ez.com/pages/wally)
[xcode](https://apps.apple.com/us/app/xcode/id497799835?mt=12)

## Chrome extensions

[bitwarden](https://chrome.google.com/webstore/detail/bitwarden-free-password-m/nngceckbapebfimnlniiiahkandclblb?hl=en)
[privacy badger](https://chrome.google.com/webstore/detail/privacy-badger/pkehgijcmpdhfbdbbnkijodmdjhbjlgp?hl=en-US)
[react](https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi?hl=en)
[ublock](https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm?hl=en)

## Firefox extensions

[bitwarden](https://addons.mozilla.org/en-US/firefox/addon/bitwarden-password-manager/)
[privacy badger](https://addons.mozilla.org/en-US/firefox/addon/privacy-badger17/)
[react](https://addons.mozilla.org/en-US/firefox/addon/react-devtools/)
[ublock](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/)

## Icons in terminal

```
git clone https://github.com/sebastiencs/icons-in-terminal.git &&
cd icons-in-terminal &&
./install.sh &&
```
