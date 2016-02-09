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

alias pd="ssh pd6.csail.mit.edu"
alias open=xdg-open

# PLS commands
alias find_errors='find ./ -name cerr.log.bz2 | xargs bzgrep "failed\|assert\|SIG\|fault\|Panic\|Illegal"'
alias find_deadlock='find ./ -name cout.log.bz2 | xargs bzgrep "Deadlocked"'
alias find_cycles='find ./ -name sim.out.bz2 | xargs bzgrep "Simulated cycles"'
alias run_tests='./tests/run_all.py -d ./build/opt/tests/'

# TEMP
alias 6823='cd /afs/csail/group/csg/www/data/6.823'
alias 6823_athena='cd /afs/athena.mit.edu/course/6/6.823'
