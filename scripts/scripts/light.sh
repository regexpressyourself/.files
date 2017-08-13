rm /home/zookeeprr/dotfiles/x/.Xresources

rm /home/zookeeprr/dotfiles/vim/.config/nvim/colors.vim 

rm /home/zookeeprr/dotfiles/termite/.config/termite/config

ln -s /home/zookeeprr/dotfiles/x/.Xresources.light /home/zookeeprr/dotfiles/x/.Xresources

ln -s /home/zookeeprr/dotfiles/termite/.config/termite/config.light /home/zookeeprr/dotfiles/termite/.config/termite/config

ln -s /home/zookeeprr/dotfiles/vim/.config/nvim/lightcolors.vim /home/zookeeprr/dotfiles/vim/.config/nvim/colors.vim 
xrdb -merge /home/zookeeprr/.Xresources 
xrdb -load /home/zookeeprr/.Xresources
killall -USR1 termite
