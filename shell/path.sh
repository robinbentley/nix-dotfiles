export CHROME_BIN="chromium-browser"

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
