if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

if [[ -d $HOME/.rbenv ]]; then
  eval "$(rbenv init -)"
fi
