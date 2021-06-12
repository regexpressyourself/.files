# Sam's Macbook Setup

## Terminal Setup

### Homebrew packages

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew upgrade
brew install yarn tmux zsh emacs neovim pandoc ripgrep tree
```

#### Homebrew errors with permissions

```bash
sudo chown -R $(whoami) /usr/local/var/homebrew
sudo chown -R "$USER":admin /usr/local
```

#### Homebrew errors with upgrade

```bash
git -C /usr/local/Homebrew/Library/Taps/homebrew/homebrew-core fetch --unshallow
```

### NPM/yarn setup

```bash
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
yarn global add prettier gulp eslint webpack webpack-cli diff-so-fancy lorem-ipsum
```


### cURL installs

```bash
## oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

## vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

## fzf-tab zsh plugin
git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab
```

### Config files

```bash
cd ~ &&
rm .zshrc &&
git clone https://www.github.com/regexpressyourself/.files.git ~/dotfiles &&
cd  ~/dotfiles &&
git checkout macbook-2021 &&
stow git &&
stow iterm &&
stow scripts  &&
stow tmux  &&
stow vim  &&
stow x  &&
stow zsh &&
stow pics &&
open iterm/.iterm-configs/inconsolata.ttf
```

========================

## Applications

- [alfred](https://www.alfredapp.com/)
- [amphetamine](https://apps.apple.com/us/app/amphetamine/id937984704?mt=12)
- [chrome](https://www.google.com/chrome/)
- [chunkwm](https://koekeishiya.github.io/chunkwm/docs.html)
- [dbeaver](https://dbeaver.io/download/)
- [docker](https://docs.docker.com/docker-for-mac/install/)
- [filezilla](https://filezilla-project.org/download.php)
- [firefox](https://www.mozilla.org/en-US/firefox/new/)
- [flux](https://justgetflux.com/)
- [gimp](https://www.gimp.org/downloads/)
- [gitkraken](https://www.gitkraken.com/download)
- [helium](https://apps.apple.com/us/app/helium/id1054607607?mt=12)
- [imageoptim](https://imageoptim.com/mac)
- [iterm2](https://www.iterm2.com/downloads.html)
- [latex](http://www.tug.org/mactex/)
- [muzzle](https://muzzleapp.com/)
- [nord VPN](https://nordvpn.com/download/mac/)
- [postman](https://www.postman.com/downloads/)
- [screaming frog](https://www.screamingfrog.co.uk/seo-spider/#)
- [tunnelblick](https://tunnelblick.net/downloads.html)
- [virtualbox](https://www.virtualbox.org/wiki/Downloads)
- [vlc](https://www.videolan.org/vlc/download-macosx.html)
- [vs code](https://code.visualstudio.com/download)
- [wally](https://ergodox-ez.com/pages/wally)
- [xcode](https://apps.apple.com/us/app/xcode/id497799835?mt=12)

### Chrome extensions

- [bitwarden](https://chrome.google.com/webstore/detail/bitwarden-free-password-m/nngceckbapebfimnlniiiahkandclblb?hl=en)
- [privacy badger](https://chrome.google.com/webstore/detail/privacy-badger/pkehgijcmpdhfbdbbnkijodmdjhbjlgp?hl=en-US)
- [react](https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi?hl=en)
- [ublock](https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm?hl=en)

### Firefox extensions

- [bitwarden](https://addons.mozilla.org/en-US/firefox/addon/bitwarden-password-manager/)
- [privacy badger](https://addons.mozilla.org/en-US/firefox/addon/privacy-badger17/)
- [react](https://addons.mozilla.org/en-US/firefox/addon/react-devtools/)
- [ublock](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/)

