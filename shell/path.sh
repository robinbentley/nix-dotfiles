export CHROME_BIN="chromium-browser"

# =====================================================
# golang
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
# pyenv
# =====================================================
export PATH="/home/robin/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# =====================================================
# make sure /usr/local/bin is always before /usr/bin
# =====================================================
export PATH=/usr/local/bin:$PATH
