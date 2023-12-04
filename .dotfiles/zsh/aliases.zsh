alias reload!='. ~/.zshrc'

# Good 'ol Clear Screen command
alias cls='clear'

alias \?='alias | fzf'

# Moving up from directory
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias cd..='cd ..'

alias ee='emacsclient -nw -c'
alias ef='e $(fzf)'
alias envim="nvim -c 'edit \$MYVIMRC'"

alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias lc='lazygit --git-dir=$HOME/.cfg --work-tree=$HOME'
