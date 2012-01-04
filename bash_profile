if [[ -d $HOME/.rbenv ]]; then
  eval "$(rbenv init -)"
fi

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi
