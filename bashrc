source ~/.bash/aliases
source ~/.bash/completions
source ~/.bash/paths
source ~/.bash/config

# use .localrc for settings specific to one system
if [ -f ~/.localrc ]; then
  source ~/.localrc
fi

 # This loads RVM into a shell session.
[[ -s ~/.rvm/scripts/rvm ]] && source ~/.rvm/scripts/rvm
