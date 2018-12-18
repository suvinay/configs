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
alias renew='prodaccess; cd $PWD'

# Tab completion on zsh is a breeze!
cdclient() { cd /google/src/cloud/${USER}/$1; }
compctl -W /google/src/cloud/${USER}/ -/ cdclient
co() { cd /google/src/cloud/${USER}/$1; }           # Yes, I like git (checkout, co anyone?)
compctl -W /google/src/cloud/${USER}/ -/ co
rmclient() { g4 citc -d $1; }
compctl -W /google/src/cloud/${USER}/ -/ rmclient

# G4/P4
# It's better to just use cs/ and the web interface for most tasks. These are meant to be a quick-and-dirty replacement for use in the terminal.
# $ gdiff               : Show all _pending_ changes in current client along with their diffs (i.e. changes to files).
# $ gdiff /path/to/file : Show _pending_ changes to /path/to/file in current client. If file has no pending changes, then empty output.
# $ glocal              : Show all local (i.e. in this depot) CLs (submitted, as well as committed / pending). Pending CLs are highlighted in red.
# $ glog                : <No arguments> => Show log for current directory [[ all CLs originating from any client ]]
# $ glog /path/to/file  : Show log for /path/to/file
#                         Unlike git log, what glog (without any argument) does is recursively call glog for each file in the directory. 
#                         This is painful, because you can have the same CL show up multiple times (if a CL touched multiple files).
# $ gshow <clnumber>    : Show changes made in specified clnumber
alias gdiff='P4DIFF=colordiff G4MULTIDIFF=0 g4 diff 2> /dev/null'
alias glocal='localchanges | sed -e "s/\(Change [[:digit:]]\+\)/$(tput setaf 3)\1$(tput sgr0)/" | sed -e "s/\(Change [[:digit:]]\+\)\(.*\)\(pending\)/$(tput setaf 3)\1$(tput sgr0)\2$(tput setaf 1)\3$(tput sgr0)/"'
alias glog='$HOME/bin/glog '
alias gshow='p4 change -o '

# Bookmark-ed paths
alias g3='cd google3'
alias platforms='cd google3/platforms'
alias performance='cd google3/platforms/performance'
alias experimental='cd /google/src/cloud/${USER}/experimental/google3/experimental/users/suvinay'
