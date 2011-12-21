# Aliases
alias gst="git status"
alias gco='git commit'
alias gdiff='git diff'
alias git="git-achievements"
alias rr="python manage.py runserver"
alias em="emacsclient -t -nw"

# Displaying git branch inside prompt
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function proml {
  local       GREEN="\[\033[0;32m\]"
  local       WHITE="\[\033[0;37m\]"

   PS1="[\u@\h \w$GREEN\$(parse_git_branch)]$WHITE\$ "
   PS2='> '
   PS4='+ '
}
proml

# Django completion
if [ -f $HOME/scripts/django_bash_completion.sh ]; then
    $HOME/scripts/django_bash_completion.sh
fi

# virtualenv and virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

# auto-completion for git commands
source /usr/share/doc/git-1.7.5.1/contrib/completion/git-completion.bash

stty -ixoff -ixon