export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

if [ -d .bash_profile.d ]; then
  for f in `find .bash_profile.d -type f`; do
    source $f
  done
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias umlet="/Applications/Umlet/umlet.sh"
alias vim="/usr/local/Cellar/vim/7.3.923/bin/vim"
