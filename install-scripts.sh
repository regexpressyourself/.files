
git clone https://github.com/regexpressyourself/.files.git dotfiles

brew upgrade

git -C /usr/local/Homebrew/Library/Taps/homebrew/homebrew-core fetch --unshallow

sudo chown -R $(whoami) /usr/local/var/homebrew

sudo chown -R "$USER":admin /usr/local




sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash


sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab



mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
yarn global add prettier gulp eslint webpack webpack-cli diff-so-fancy lorem-ipsum



/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install yarn tmux zsh emacs neovim pandoc ripgrep tree
