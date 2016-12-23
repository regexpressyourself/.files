
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

eval $( dircolors -b $HOME/.dir_colors )
alias dir='dir --color'
alias ls='ls --color'

# song recording
alias song="python2 ~/documents/school/goodsong.py"

alias school="cd ~/documents/school/Sp2017"
alias jobs="cd ~/documents/school/jobs"
alias 435="cd ~/documents/school/Sp2017/435"
alias 410="cd ~/documents/school/Sp2017/410"
alias math="cd ~/documents/school/Sp2017/math"
alias eng="cd ~/documents/school/Sp2017/eng"

alias song="cd ~/documents/school && python2 goodsong.py && cd -"
alias lastsong="cd ~/documents/school && python2 goodsonglast.py && cd -"

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
export PATH=~/.local/bin:$PATH
