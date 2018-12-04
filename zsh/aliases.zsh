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
alias tmux='tmx2'
alias open=xdg-open

# Config files
alias zshrc='$EDITOR ~/.zshrc'
alias vimrc='$EDITOR ~/.vimrc'
alias bashrc='$EDITOR ~/.bashrc'
alias aliases='$EDITOR ~/.oh-my-zsh/custom/aliases.zsh'
alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"

# ssh
alias z='ssh z.csail.mit.edu'
alias mad='ssh mad6.csail.mit.edu'

# CitC
alias myclients='p4 myclients; cd /google/src/cloud/${USER}/'
alias lsclients='p4 myclients; ls /google/src/cloud/${USER}/'
alias mkclient='g4d -f '

# Tab completion on zsh is a breeze!
cdclient() { cd /google/src/cloud/${USER}/$1; }
compctl -W /google/src/cloud/${USER}/ -/ cdclient
co() { cd /google/src/cloud/${USER}/$1; }           # Yes, I like git (checkout, co anyone?)
compctl -W /google/src/cloud/${USER}/ -/ co
rmclient() { g4 citc -d $1; }
compctl -W /google/src/cloud/${USER}/ -/ rmclient

# G4/P4
alias gdiff='P4DIFF=colordiff G4MULTIDIFF=0 g4 diff'
