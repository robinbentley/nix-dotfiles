# =====================================================
# add GOPATH & GOBIN
# =====================================================
export GOPATH=~/.go
export GOBIN=$GOPATH/bin
export PATH=$PATH::/usr/bin/go

# =====================================================
# nvm
# =====================================================
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# =====================================================
# add rbenv and completions
# =====================================================
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi


# =====================================================
# make virtualenv easier with virtualenvwrapper
# =====================================================
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages -p /usr/bin/python3'
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
#export VIRTUALENVWRAPPER_PYTHON=`which python`
if [[ -r ~/.local/bin/virtualenvwrapper.sh ]]; then
    source ~/.local/bin/virtualenvwrapper.sh
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi

# =====================================================
# Adding local node + npm to path to stop sudo problems
# Move npm global installs to user home
# =====================================================
export N_PREFIX=$HOME/.local
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.npm-global/bin:$PATH

# =====================================================
# make sure /usr/local/bin is always before /usr/bin
# =====================================================
export PATH=/usr/local/bin:$PATH
