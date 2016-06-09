shopt -u -o history

export PATH=~/.npm/bin:$PATH
[ -f ~/.bash_variables ] && . ~/.bash_variables

[ -f $(brew --prefix)/etc/bash_completion.d/git-prompt.sh ] && . $(brew --prefix)/etc/bash_completion.d/git-prompt.sh
[ -f $(brew --prefix)/etc/bash_completion ] && . $(brew --prefix)/etc/bash_completion

which rbenv > /dev/null && eval "$(rbenv init -)"
which nodenv > /dev/null && eval "$(nodenv init -)"

[ -f ~/.bash_aliases ] && . ~/.bash_aliases
