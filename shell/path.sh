export CHROME_BIN="chromium-browser"

# =====================================================
# golang
# =====================================================
export GOPATH=~/.go
export PATH=$PATH:/usr/local/go/bin

# =====================================================
# nvm
# =====================================================
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# =====================================================
# pyenv
# =====================================================
export PATH=/home/robin/.pyenv/bin:$PATH
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# =====================================================
# flutter
# =====================================================
export PATH=/home/robin/flutter/flutter/bin:$PATH

# =====================================================
# make sure /usr/local/bin is always before /usr/bin
# =====================================================
export PATH=/usr/local/bin:$PATH
