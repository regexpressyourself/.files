git clone https://www.github.com/regexpressyourself/.files.git ~/dotfiles &&
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" &&
sudo pacman -S vim i3 stow tmux zsh termite chromium rofi conky feh gedit firefox gthumb vlc nautilus emacs neovim npm node &&
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d &&
mkdir ~/aur &&
cd ~/aur &&
git clone https://www.github.com/Airblader/i3 i3-gaps &&
cd i3-gaps &&
autoreconf --force --install &&
rm -rf build/ &&
mkdir -p build && cd build/ &&
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers &&
make &&
sudo make install &&
git clone https://github.com/sebastiencs/icons-in-terminal.git &&
cd icons-in-terminal &&
./install.sh &&
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim &&
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

