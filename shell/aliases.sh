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
alias open='thunar'
alias vim="nvim"

# editing hosts file for virtualhosts/vagrant etc
alias hosts='sudo vim /etc/hosts'
