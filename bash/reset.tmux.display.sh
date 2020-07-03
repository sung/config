#######################################
## TMUX update DISPLAY when reconnect #
#######################################
#https://goosebearingbashshell.github.io/2017/12/07/reset-display-variable-in-tmux.html
export DISPLAY="`tmux show-env | sed -n 's/^DISPLAY=//p'`"
