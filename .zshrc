# parse_git_branch() {
    # local branchName=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')
    # if [ -n "$branchName" ]
    # then
      # echo "  $branchName"
    # fi
# }
# setopt PROMPT_SUBST
# PROMPT='%F{cyan}%d%f%F{green}$(parse_git_branch)%f %F{cyan}=>%f '

export PATH="$PATH:$(go env GOPATH)/bin"

export EDITOR=nvim

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[[ -s ~/.gvm/scripts/gvm ]] && source ~/.gvm/scripts/gvm

# Alias for common commands -----------------------------------------------------------------------------
alias v=nvim
alias l=lazygit
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' # alias for dotfiles
alias mp='gh markdown-preview'
alias cd=z # alias cd to zoxide

eval "$(gh copilot alias -- zsh)"
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"


# Yazi ---------------------------------------------------------------------------------------------------

# Yazi shell wrapper function from:
# https://yazi-rs.github.io/docs/quick-start/#shell-wrapper
# This function is used to change the current working directory of the shell when exit from yazi.
# this function will also alias y to yazi.
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# Starship -------------------------------------------------------------------------------------------------

# fixes backspace in spaceship prompt
# https://github.com/spaceship-prompt/spaceship-prompt/issues/91
bindkey "^?" backward-delete-char

# Pyenv ----------------------------------------------------------------------------------------------------
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# .Net -----------------------------------------------------------------------------------------------------
export PATH="$PATH:/Users/ryan.forte/.dotnet/tools
