

# extract archives
function extract()
{
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1     ;;
            *.tar.gz)    tar xvzf $1     ;;
            *.bz2)       bunzip2 $1      ;;
            *.rar)       unrar x $1      ;;
            *.gz)        gunzip $1       ;;
            *.tar)       tar xvf $1      ;;
            *.tbz2)      tar xvjf $1     ;;
            *.tgz)       tar xvzf $1     ;;
            *.zip)       unzip $1        ;;
            *.Z)         uncompress $1   ;;
            *.7z)        7z x $1         ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}
##show hidden files##
alias l.="ls -d .* --color=auto"

##Easier directory change##
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
alias ........="cd ../../../../../../.."

alias eclimd="cd ~/.eclipse/org.eclipse.platform_4.5.1_155965261_linux_gtk_x86/plugins/org.eclim_2.5.0/bin"
alias ctags="ctags -R ."

alias 1111="xbacklight -dec 200"
alias 2222="xbacklight -inc 200"

##vim as default##
alias vi=nvim
alias vim=nvim
alias svi="sudo vi"
alias edit="vim"

alias ":q"="exit"

alias change_dir="cd class"
##show open ports##
alias ports="netstat -tulanp"

##speedtest##
alias speedtest="wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test100.zip"
##sudo it up##
alias cmon="sudo !!"

##guitar tune##
alias guitar="for n in E2 A2 D3 G3 B3 E4; do play -n synth 4 pluck $n repeat
5;done"


alias jc=". ~/scripts/java_compiler.sh"
alias jcc=". ~/scripts/java_compiler_only.sh"

# tmux
alias tls="tmux ls"
alias td="tmux detach"
alias tatt="tmux attach-session -t "
function new-tmux-from-dir-name {
tmux new-session -As `basename $PWD`
}
alias tnew="new-tmux-from-dir-name"

alias dir='dir --color'
alias ls='ls --color' 



alias school="cd ~/documents/school/Fall2017"
alias 407="cd ~/documents/school/Fall2017/407"
alias 437="cd ~/documents/school/Fall2017/437"
alias 498="cd ~/documents/school/Fall2017/SeniorProject"
alias phls="cd ~/documents/school/Fall2017/PHLS"
alias pols="cd ~/documents/school/Fall2017/POLS"

# TaskWarrior
alias tasks="task list && task calendar"

# Fuck python 3
#alias python="python2"

alias pdf="apvlv"

alias emacz="emacsclient -c"
alias idea="~/aur/idea-IC-143.382.35/bin/idea.sh"
alias kde="~/config/kde.sh"
alias i3="~/config/i3.sh"

alias mongod="mongod --storageEngine=mmapv1 --dbpath ~/documents/mongodata"

alias sm="sh ~/scripts/monitoron.sh"
alias ms="sh ~/scripts/monitoroff.sh"

alias findfile="find . -name "

#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

alias mu="cd /var/www/html/macupdate.com"

alias emacs="Emacs -nw"

alias of="vim \$(fzf --reverse --border)"
alias od="cd \$(dirname \$(fzf --height 40% --reverse --border))"
alias fzf="fzf --height 40% --reverse --border"

alias tmu="bash ~/scripts/tail_error.sh"
eval $( dircolors -b $HOME/.dir_colors ) 



# basic utils
alias rm='rm -v'
alias cp='cp -v'
alias mv='mv -v'

alias light="bash /home/zookeeprr/scripts/light.sh"
alias dark="bash /home/zookeeprr/scripts/dark.sh"
alias urxvt="urxvt -b 0"

alias play="playerctl play"
alias pause="playerctl pause"
alias next="playerctl next"
alias prev="playerctl prev"

alias gc="sh ~/scripts/c_compiler.sh"

alias m="make"
