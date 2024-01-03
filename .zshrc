parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
setopt PROMPT_SUBST
PROMPT='%F{red}%d%f%F{green}$(parse_git_branch)%f 👺 '

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[[ -s ~/.gvm/scripts/gvm ]] && source ~/.gvm/scripts/gvm

# Alias for NVIM
alias nv=nvim

# alias for Dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# shortcuts
alias s1='shortcuts run "Launch Safari"'
alias s2='shortcuts run "Launch Slack"'
