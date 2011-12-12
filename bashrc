source ~/.bash/aliases
source ~/.bash/completions
source ~/.bash/paths
source ~/.bash/config
source ~/.bash/node

# Load chef specific file if it exists
if [ -f ~/.bash/chef ]; then
  source ~/.bash/chef
fi

# use .localrc for settings specific to one system
if [ -f ~/.localrc ]; then
  source ~/.localrc
fi
