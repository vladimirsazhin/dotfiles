export EDITOR="/usr/local/bin/code -w"
export GPG_TTY=$(tty)

PS1="\[\033[01;34m\]\w\[\033[00;32m\]\$(__git_ps1)\[\033[00m\] \[\033[01;30m\]\$ \[\033[00m\]"
case "$TERM" in
xterm*|rxvt*)
  PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
  ;;
*)
  ;;
esac

[ -f $(brew --prefix)/etc/bash_completion ] && . $(brew --prefix)/etc/bash_completion

which rbenv > /dev/null && eval "$(rbenv init -)"
which nodenv > /dev/null && eval "$(nodenv init -)"
