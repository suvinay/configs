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

alias pd="ssh pd6.csail.mit.edu"
alias open=xdg-open

# PLS commands
alias find_errors='find ./ -name cerr.log.bz2 | xargs bzgrep "failed\|assert\|SIG\|fault\|Panic\|Illegal"'
alias find_deadlock='find ./ -name cerr.log.bz2 | xargs bzgrep "Deadlock"'
alias find_cycles='find ./ -name sim.out.bz2 | xargs bzgrep "Simulated cycles"'
alias run_tests='./tests/run_all.py -d ./build/opt/tests/'
alias run_sweep_tests='./build/opt/tests/run.py -c configs/*.cfg --workers 8'

# TEMP
alias 6823='cd /afs/csail/group/csg/www/data/6.823'
alias 6823_athena='cd /afs/athena.mit.edu/course/6/6.823'

# Config files
alias zshrc='$EDITOR ~/.zshrc'
alias vimrc='$EDITOR ~/.vimrc'
alias bashrc='$EDITOR ~/.bashrc'
alias aliases='$EDITOR ~/.oh-my-zsh/custom/aliases'
