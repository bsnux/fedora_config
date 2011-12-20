export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

alias gst="git status"
alias rr="python manage.py runserver"
alias em="emacsclient -t"


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

