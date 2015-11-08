# general
alias ll='ls -la --color=auto'
alias tree='tree -L 2'
alias cl='clear'

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ~='cd ~'

# updating & installing
alias update='sudo apt-get update'
alias upgrade='sudo apt-get update && sudo apt-get upgrade'
alias install='sudo apt-get install'

# grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# network
alias ping='ping -c 5'

# applications
alias sub='subl'
alias open='nautilus'

# editing hosts file for virtualhosts/vagrant etc
alias hosts='sudo vim /etc/hosts'

# django manage commands
alias djsyncdb="python manage.py syncdb"
alias djmake="python manage.py makemigrations"
alias djserve="python manage.py runserver"
alias djmigrate="python manage.py migrate"
alias djapp="python manage.py startapp"
alias djproject="python manage.py startproject"
alias djtest="python manage.py test"

# dev servers
alias pyserve="python -m SimpleHTTPServer 3030"
