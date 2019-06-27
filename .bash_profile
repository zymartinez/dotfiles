if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# git aliases
alias g="git"
alias gs="git status "
alias ga="git add "
alias gd="git diff"
alias gp="git push "
alias gpf="git push --force"
alias gci="git commit "
alias gco="git checkout "

#random aliases
alias vim="nvim"
alias pvim="pipenv run nvim"

# fzf
source ~/.fzf.bash
#export FZF_DEFAULT_COMMAND='ag --hidden --ignore *.pyc -g ""'
export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export AMADEUS_USERNAME=WS6XSDX26
export AMADEUS_PASSWORD=WlgUN2ng

#eval "$(rbenv init -)"

#PYTHON_BIN_PATH="$(python3 -m site --user-base)/bin"
#PATH="$PATH:$PYTHON_BIN_PATH"

#export PATH="/Users/zyrexsonmartinez/Library/Python/3.6/bin:$PATH"
