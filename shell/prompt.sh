# Completions
autoload -U compinit
compinit -C
# case-insensitive (all),partial-word and then substring completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# load some color
autoload -U colors
colors

# allow functions in the prompt
setopt prompt_subst

# =====================================================
# git prompt
# =====================================================
source ~/dotfiles/shell/git_prompt/git_prompt.sh

# =====================================================
# virtualenv prompt
# =====================================================

# disable the default virtualenv prompt
export VIRTUAL_ENV_DISABLE_PROMPT=1

# get the current virtualenv and strip out the path to get the name
function prompt_venv() {
    if [[ -n "$VIRTUAL_ENV" ]]; then
        venv="${VIRTUAL_ENV##*/}";
    fi
    [[ -n "$venv" ]] && echo "%{$fg[magenta]%}($venv) %{$reset_color%}"
}

# =====================================================
# build the prompt
# =====================================================
PROMPT="\$(prompt_venv)%{$fg[yellow]%}%n%{$reset_color%}@%{$fg[green]%}%m%{$reset_color%}: %{$fg[blue]%}%3~%{$reset_color%} \$(git_super_status)
%% "
_PROMPT=$PROMPT
