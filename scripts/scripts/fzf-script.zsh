FILE=$(fzf --reverse --border --height 40%)
if [ "$FILE" ]; then
  echo "vim $FILE"
  /opt/homebrew/bin/nvim $FILE
fi
