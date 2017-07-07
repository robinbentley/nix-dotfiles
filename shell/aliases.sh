# general
alias ll='ls -lah --color=auto'
alias tree='tree -L 2'
alias cl='clear'

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ~='cd ~'

# updating & installing
alias update='sudo apt-get update -y'
alias upgrade='sudo apt-get update -y && sudo apt-get upgrade -y'
alias install='sudo apt-get install -y'
alias autoremove='sudo apt-get clean -y && sudo apt-get autoremove -y && sudo apt-get autoclean -y'
alias distupgrade='sudo apt-get dist-upgrade -y'
alias remove='sudo apt-get remove --purge -y'
alias aptsearch='sudo apt-cache search'

# grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# network
alias ping='ping -c 5'

# applications
alias sub='subl'
alias open='nautilus --no-desktop &'
alias vim="nvim"

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

# docker commands
alias lsdocker="docker ps --format 'table {{.Names}}\t{{.Image}}\t{{.Status}}'"

# launch battlescribe roster editor
alias battlescribe="java -jar ~/Documents/BattleScribe/RosterEditor.jar"
