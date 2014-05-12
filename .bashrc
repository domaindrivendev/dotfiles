export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export TERM=xterm-256color

export PATH="/usr/local/bin:$PATH"

alias umlet="/Applications/Umlet/umlet.sh"

source /home/richie/.rvm/scripts/rvm

if [ -d .bashrc.d ]; then
  for f in `find .bashrc.d -type f`; do
    source $f
  done
fi
