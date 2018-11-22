# Mount devices / file systems

# Misc commands
alias update="su -c \"apt-get update;apt-get upgrade\""
alias switch_gcc="sudo update-alternatives --config gcc"

# Editors
alias e="emacs -nw"
alias v="vim"
alias vi="vim"
alias g="gvim"

# Terminal commands
alias cl="clear"
alias lt="ls -lrt"
alias la="ls -a"
alias rm="rm -i"
alias xterm='xterm -fa default -fs 14'

alias open=xdg-open

# Config files
alias zshrc='$EDITOR ~/.zshrc'
alias vimrc='$EDITOR ~/.vimrc'
alias bashrc='$EDITOR ~/.bashrc'
alias aliases='$EDITOR ~/.oh-my-zsh/custom/aliases.zsh'
alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"
