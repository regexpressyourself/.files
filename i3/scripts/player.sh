#!/bin/bash
# Based on https://aur.archlinux.org/packages/playerctl/

INSTANCE="${BLOCK_INSTANCE}"

if [[ "${INSTANCE}" != "" ]]; then
  ARGUMENTS="--player ${INSTANCE}"
fi

ICON_PLAY=""
ICON_PAUSE=""
ICON_STOP="≠"
CUR_ICON=""

if [[ "${BLOCK_BUTTON}" -eq 1 ]]; then
  $(playerctl ${ARGUMENTS} previous)
elif [[ "${BLOCK_BUTTON}" -eq 2 ]]; then
  $(playerctl ${ARGUMENTS} play-pause)
elif [[ "${BLOCK_BUTTON}" -eq 3 ]]; then
  $(playerctl ${ARGUMENTS} next)
fi

PLAYER_STATUS=$(playerctl ${ARGUMENTS} status)
INFO_TITLE=$(playerctl ${ARGUMENTS} metadata title)
INFO_ALBUM=$(playerctl ${ARGUMENTS} metadata album)
INFO_ARTIST=$(playerctl ${ARGUMENTS} metadata artist)

# Escape double quotes
INFO_TITLE=${INFO_TITLE//\"/\\\"}
INFO_ALBUM=${INFO_ALBUM//\"/\\\"}
INFO_ARTIST=${INFO_ARTIST//\"/\\\"}

if [[ "${PLAYER_STATUS}" = "Paused" ]]; then
  CUR_ICON="${ICON_PAUSE}"
elif [[ "${PLAYER_STATUS}" = "Playing" ]]; then
  CUR_ICON="${ICON_PLAY}"
else
  CUR_ICON="${ICON_STOP}"
fi

if [[ "${INFO_TITLE}" != "" ]] && [[ "${INFO_ARTIST}" != "" ]]; then
  echo "${CUR_ICON} ${INFO_ARTIST} - ${INFO_TITLE}"
fi
