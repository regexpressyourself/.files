########################################
# INSTALL PACKAGES

git clone https://www.github.com/regexpressyourself/.files.git ~/dotfiles &&

sudo pacman -S curl \
# Custom linux desktop setup stuff
i3 rofi conky feh arandr xbacklight xorg-xbacklight pulseaudio \
# Development stuff
neovim vim tmux emacs zsh stow diff-so-fancy \
# General Use Programs
termite firefox gedit chromium gthumb vlc nautilus \
# Programming Languages
npm node yarn postgresql python3 mariadb &&

########################################
# wally for ergodox

#sudo pacman -S gtk3 webkit2gtk libusb
#sudo touch /etc/udev/rules.d/50-wally.rules
#sudo vim /etc/udev/rules.d/50-wally.rules

########################################
# ZSH

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" &&

########################################
# VIM-PLUG

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim &&

########################################
# ICONS-IN-TERMINAL

git clone https://github.com/sebastiencs/icons-in-terminal.git ~/icons-in-terminal &&
cd ~/icons-in-terminal &&
./install.sh &&
cd ~ &&
rm -rf icons-in-terminal &&

########################################
# SPACEMACS

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d &&

########################################
# LOAD CONFIGS

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
stow pics
git config --global credential.helper store
