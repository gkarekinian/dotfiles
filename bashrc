source ~/.bash/paths
source ~/.bash/aliases
source ~/.bash/completions
source ~/.bash/config
source ~/.bash/node
source ~/.bash/tmuxinator

# chruby
if [ -f /usr/local/share/chruby/chruby.sh ]; then
  source /usr/local/share/chruby/chruby.sh
fi

# chruby auto switching on .ruby-version
if [ -f /usr/local/share/chruby/auto.sh ]; then
  source /usr/local/share/chruby/auto.sh
fi

# Load chef specific file if it exists
if [ -f ~/.bash/chef ]; then
  source ~/.bash/chef
fi

# use .localrc for settings specific to one system
if [ -f ~/.localrc ]; then
  source ~/.localrc
fi
