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
# Adding local node + npm to path to stop using 'sudo'
# =====================================================
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/local/bin:$PATH

# =====================================================
# make sure /usr/local/bin is always before /usr/bin
# =====================================================
export PATH=/usr/local/bin:$PATH
