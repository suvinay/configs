# Mount devices / file systems

# ######################## #
# Misc commands
# ######################## #

# ######################## #
# Editors
# ######################## #
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias e="emacs -nw"
alias v="vim"
alias vi="vim"
alias g="gvim"

# ######################## #
# Terminal commands
# ######################## #
alias cl="clear"
alias lt="ls -lrt"
alias la="ls -a"
alias rm="rm -i"
alias xterm='xterm -fa default -fs 14'

# ######################## #
# PLS commands
# ######################## #
alias find_errors='find ./ -name cerr.log.bz2 | xargs bzgrep "failed\|assert\|SIG\|fault\|Panic\|Illegal"'
alias find_deadlock='find ./ -name cerr.log.bz2 | xargs bzgrep "Deadlock"'
alias find_cycles='find ./ -name sim.out.bz2 | xargs bzgrep "Simulated cycles"'
alias run_tests='./tests/run_all.py -d ./build/opt/tests/'
alias run_sweep_tests='./build/opt/tests/run.py -c configs/*.cfg --workers 8'
alias sort_cycles="find ./ -name sim.out.bz2 | xargs bzgrep 'Simulated cycles' | sed -rn 's/.*-([0-9]+)c-.*: ([0-9]+) # Simulated cycles/\\1c \\2/p' | sort -k 1n | awk  '{ printf \"%s %.6f M cycles\\n\", \$1, \$2/=1000000}'"

# ######################## #
# Config files
# ######################## #
alias zshrc='$EDITOR ~/.zshrc'
alias vimrc='$EDITOR ~/.vimrc'
alias bashrc='$EDITOR ~/.bashrc'
alias aliases='$EDITOR ~/.oh-my-zsh/custom/aliases'
alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"

# ######################## #
# Network
# ######################## #
alias eros="ssh -X suvinay@eros-mtl1.mit.edu"
alias hermes="ssh -X suvinay@hermes5.csail.mit.edu"
alias lab="ssh -X suvinay@suvinay-desktop.csail.mit.edu"
alias mosh_hermes="mosh suvinay@hermes1.csail.mit.edu --server=/afs/csail.mit.edu/u/k/keithw/mosh-kerberos/mosh-server"
alias mosh_lab="mosh suvinay@suvinay-desktop.csail.mit.edu --server=/afs/csail.mit.edu/u/k/keithw/mosh-kerberos/mosh-server"
alias mosh_mad="mosh suvinay@mad6.csail.mit.edu --server=/afs/csail.mit.edu/u/k/keithw/mosh-kerberos/mosh-server"
alias mad="ssh -X mad6.csail.mit.edu"
alias z="ssh -X z.csail.mit.edu"
alias mosh_z="mosh suvinay@z.csail.mit.edu --server=/afs/csail.mit.edu/u/k/keithw/mosh-kerberos/mosh-server"
alias athena="ssh -X x.dialup.mit.edu"
alias vlsifarm="ssh -X vlsifarm-06.mit.edu"

# ######################## #
# Backup / Mirroring
# ######################## #
# Note: Be careful with the trailing slash. In 1, it places 6823 inside of ~/MIT/Courses
# If instead you put a slash after 6823, it will put the contents of 6823 in ~/MIT/Courses, but without creating a 6823 dir inside first.
# General rules:
# + No slash in the source directory => copy the source directory and its contents
#   recursively (if specified) to the destination.
# + With slash in the source directory => copy the contents inside the source
#   directory recursively (if specified) to the destination.
# + Slash has no effect on the destination. Whatever the semantics on the
#   source, those contents are copied inside the destination folder.

# 1. Sync with source=lab; destination=local; Any file/dir not present in source, but present in destination is deleted at destination.
# Use this if you want to pull from lab to local.
# alias sync_with_lab='rsync --stats -a -e ssh --delete "suvinay@z.csail.mit.edu:~/research/" ~/Myspace/research/'

# 2. Any modified files in source=local are reflected in dest=lab. Any deleted files in local do not propagate to lab.  
# Use this if you want to push local changes to lab (new files, modified files).
# Any files that you deleted in lab, but still present in local...will now get pushed to lab.
# alias sync_with_home_no_del='rsync --stats -a -e ssh "/Users/suvinay/Myspace/research/" "suvinay@z.csail.mit.edu:~/research/"'

# I prefer to do these manually, and not using a cron script. I expect most
# changes to happen in the lab machine. And local is just for ease of viewing.
# So in most cases you should only be pulling from lab. This is NOT meant to be 
# a backing up mechanism. I expect lab machines to be backed up properly by
# CSAIL. I am using these merely to mirror my lab machine contents. I am unhappy 
# with AFS on Mac, and often do not need my entire AFS mirrored. So this is a
# light-weight approach to mirror what I need.
# pull: pulls contents from lab machine to local (any files not in lab are also deleted locally).
# push: pushes contents from local to lab machine (any files not in local are also deleted in lab).
alias pull_research_from_lab='rsync --stats -a -e ssh --delete --info=progress2 "suvinay@z.csail.mit.edu:~/research/" ~/Myspace/research/'
alias push_research_to_lab='rsync --stats -a -e ssh --delete --info=progress2 "/Users/suvinay/Myspace/research/" "suvinay@z.csail.mit.edu:~/research/"'

alias pull_admin_from_lab='rsync --stats -a -e ssh --delete --info=progress2 "suvinay@z.csail.mit.edu:~/admin/" ~/Myspace/admin/'
alias push_admin_to_lab='rsync --stats -a -e ssh --delete --info=progress2 "/Users/suvinay/Myspace/admin/" "suvinay@z.csail.mit.edu:~/admin/"'

alias sync_graphs='rsync --stats -a -e ssh --delete --info=progress2 "suvinay@z.csail.mit.edu:~/research/projects/ordspec-scripts/graph-scripts/load_balancing_graphs/" ~/Myspace/temp/'
alias sync_paper='rsync --stats -a -e ssh --delete --info=progress2 "suvinay@z.csail.mit.edu:~/research/projects/papers/isca17_fractal/isca17_fractal.pdf" ~/Desktop/'

# ######################## #
# Misc 
# ######################## #
alias start_video="sudo killall VDCAssistant" # Use when Skype video is not working

# ######################## #
# Coding
# ######################## #
alias clang_mac="clang++ -std=c++11 -stdlib=libc++ foo.cc"

# ######################## #
# TEMP
# ######################## #
alias get_paper="scp suvinay@z.csail.mit.edu:~/research/projects/ordtm/papers/isca17_fractal/isca17_fractal.pdf ~/Desktop"
