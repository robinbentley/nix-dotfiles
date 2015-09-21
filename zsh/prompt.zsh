# load some color
autoload -U colors
colors

# allow functions in the prompt
setopt prompt_subst

# grep colors
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;31;40'

# =====================================================
# git prompt
# Shout out to @necolas (https://github.com/necolas/dotfiles/blob/master/shell/bash_prompt)
# =====================================================
function prompt_git() {
    local s=""
    if [[ -d $(git rev-parse --show-toplevel 2>/dev/null) ]]; then

        git update-index --really-refresh  -q &>/dev/null

        branchName="$(git symbolic-ref --quiet --short HEAD 2> /dev/null || \
                          git rev-parse --short HEAD 2> /dev/null || \
                          echo "(unknown)")"

        [ -n "$s" ] && s="[$s]"

        echo "on %{$fg[cyan]%}$branchName$s%{$reset_color%}"

    else
        return
    fi
}

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
PROMPT="\$(prompt_venv)%{$fg[yellow]%}%n%{$reset_color%}@%{$fg[green]%}%m%{$reset_color%}: %{$fg[blue]%}%3~%{$reset_color%} \$(prompt_git)
%% "
_PROMPT=$PROMPT
