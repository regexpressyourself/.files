rm /home/zookeeprr/dotfiles/x/.Xresources
rm /home/zookeeprr/dotfiles/vim/.config/nvim/colors.vim 
ln -s /home/zookeeprr/dotfiles/x/.Xresources.light /home/zookeeprr/dotfiles/x/.Xresources
ln -s /home/zookeeprr/dotfiles/vim/.config/nvim/lightcolors.vim /home/zookeeprr/dotfiles/vim/.config/nvim/colors.vim 
xrdb -merge /home/zookeeprr/.Xresources 
xrdb -load /home/zookeeprr/.Xresources
killall -s SIGHUP urxvt