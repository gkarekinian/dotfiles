export HISTFILE=~/.history
export HISTCONTROL=erasedups
export HISTSIZE=10000
export SAVEHIST=$HISTSIZE
bindkey -e # Emacs key-bindings
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/kare/.zshrc'

fpath=(/usr/local/share/zsh-completions $fpath)

autoload -Uz compinit
compinit

alias ls='ls -G'
alias ll='ls -lG'
export CLICOLOR="1"
export GREP_OPTIONS='--color=auto'
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

if [ -d /usr/local/share/chruby/ ]; then
  source /usr/local/share/chruby/chruby.sh
  source /usr/local/share/chruby/auto.sh
fi

if [ -f ~/.zsh/zsh-git-prompt/zshrc.sh ]; then
  source ~/.zsh/zsh-git-prompt/zshrc.sh
  GIT_PROMPT_EXECUTABLE="haskell"
fi

export EDITOR="vim"
autoload -U colors && colors
export PROMPT='%{$fg[blue]%}%~%{$reset_color%}$(git_super_status)$ '

preexec() { date "+%H:%M:%S" }

if [ -f ~/.zsh/chef ]; then
  source ~/.zsh/chef
fi

function c() {
  proj=$(ls ~/code | selecta)
  if [[ -n "$proj" ]]; then
    cd ~/code/$proj
  fi
}

function f() {
  proj=$(ls ~/code/5apps | selecta)
  if [[ -n "$proj" ]]; then
    cd ~/code/5apps/$proj
  fi
}

function g() {
  proj=$(ls ~/code/gregkare | selecta)
  if [[ -n "$proj" ]]; then
    cd ~/code/gregkare/$proj
  fi
}

function i() {
  proj=$(ls ~/code/ilovept | selecta)
  if [[ -n "$proj" ]]; then
    cd ~/code/ilovept/$proj
  fi
}

alias gst="git status -sb"

export PATH="/usr/local/bin:$PATH:~/bin"

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/kare/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

# Set up SSH for Yubikey
# export SSH_AUTH_SOCK=~/.gnupg/S.gpg-agent.ssh
gpg-agent &> /dev/null || eval $(gpg-agent --daemon)
SSH_AUTH_SOCK=~/.gnupg/S.gpg-agent.ssh; export SSH_AUTH_SOCK
GPG_TTY=$(tty); export GPG_TTY
# eval $(gpg-agent --daemon)
