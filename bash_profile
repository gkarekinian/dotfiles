if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

if [[ -d /usr/local/heroku/bin ]]; then
  export PATH="/usr/local/heroku/bin:$PATH"
fi
