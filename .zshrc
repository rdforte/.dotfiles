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


# Starship command line prompt.
# Disable for previous executions and only show
# for current command.
zle-line-init() {
  emulate -L zsh

  [[ $CONTEXT == start ]] || return 0

  while true; do
    zle .recursive-edit
    local -i ret=$?
    [[ $ret == 0 && $KEYS == $'\4' ]] || break
    [[ -o ignore_eof ]] || exit 0
  done

  local saved_prompt=$PROMPT
  local saved_rprompt=$RPROMPT

  # Set prompt value from character module
  PROMPT=$(starship module character)
  RPROMPT=''
  zle .reset-prompt
  PROMPT=$saved_prompt
  RPROMPT=$saved_rprompt

  if (( ret )); then
    zle .send-break
  else
    zle .accept-line
  fi
  return ret
}

zle -N zle-line-init
