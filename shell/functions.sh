# NVM automatically switches to the .nvmrc version upon
# entering a directory
# TODO: write this into the prompt script...probably
# https://github.com/creationix/nvm/issues/110#issuecomment-239334627

# change title name of tab in terminal
function title {
    echo -ne "\033]0;"$*"\007"
}

cd() {
  builtin cd "$@" || return
  if [ "$PWD" != "$PREV_PWD" ]; then
    PREV_PWD="$PWD";
    title $(echo ${PWD##*/}) $(node -v);
    if [ -e ".nvmrc" ]; then
      nvm use;
      # set tab terminal name to be cwd and node version
      title $(echo ${PWD##*/}) $(node -v);
    else
      nvm use system;
    fi
  fi
}
