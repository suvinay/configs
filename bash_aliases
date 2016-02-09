# ######################## #
# Terminal commands
# ######################## #
alias e="emacs -nw"
alias v="vim"
alias vi="vim"
alias g="gvim"
alias cl="clear"
alias lt="ls -lrt"
alias la="ls -a"
alias rm="rm -i"

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
# Backup
# ######################## #
# Note: Be careful with the trailing slash. In 1, it places 6823 inside of ~/MIT/Courses
# If instead you put a slash after 6823, it will put the contents of 6823 in ~/MIT/Courses, but without creating a 6823 dir inside first.
# 1. Sync with source=lab; destination=local; Any file/dir not present in source, but present in destination is deleted at destination.
# Use this if you want to pull from lab to local.
alias sync_with_lab='rsync --stats -a -e ssh --delete "suvinay@z.csail.mit.edu:~/courses/6823" ~/MIT/Courses/'

# 2. Any modified files in source=local are reflected in dest=lab. Any deleted files in local do not propagate to lab.  
# Use this if you want to push local changes to lab (new files, modified files).
# Any files that you deleted in lab, but still present in local...will now get pushed to lab.
alias sync_with_home_no_del='rsync --stats -a -e ssh "/Users/suvinay/MIT/Courses/6823" "suvinay@hermes1.csail.mit.edu:~/courses/"'

# ######################## #
# Misc: Use when Skype video is not working
# ######################## #
alias start_video="sudo killall VDCAssistant"

# ######################## #
# Coding
# ######################## #
alias clang_mac="clang++ -std=c++11 -stdlib=libc++ foo.cc"

# ######################## #
# TEMP
# ######################## #
alias get_paper="scp suvinay@z.csail.mit.edu:~/research/projects/ordtm/papers/isca16_flock/isca16_flock.pdf ~/Desktop"
