alias e="emacs -nw"
alias v="vim"
alias vi="vim"
alias g="gvim"
alias cl="clear"
alias lt="ls -lrt"
alias la="ls -a"
alias rm="rm -i"
alias eros="ssh -X suvinay@eros-mtl1.mit.edu"
alias hermes="ssh -X suvinay@hermes1.csail.mit.edu"
alias lab="ssh -X suvinay@suvinay-desktop.csail.mit.edu"
alias mosh_hermes="mosh suvinay@hermes1.csail.mit.edu --server=/afs/csail.mit.edu/u/k/keithw/mosh-kerberos/mosh-server"
alias mosh_lab="mosh suvinay@suvinay-desktop.csail.mit.edu --server=/afs/csail.mit.edu/u/k/keithw/mosh-kerberos/mosh-server"
alias mad="ssh -X mad6.csail.mit.edu"
alias mosh_mad="mosh suvinay@mad6.csail.mit.edu --server=/afs/csail.mit.edu/u/k/keithw/mosh-kerberos/mosh-server"
alias sync_with_lab='rsync --stats -r -e ssh --delete "suvinay@hermes1.csail.mit.edu:~/courses/6th\ Semester\ -\ Spring\ 2014/6.836\ -\ Multicore\ Programming" ~/MIT/Courses/'
alias sync_with_home='sync_with_lab; rsync --stats -r -e ssh "/Users/suvinay/MIT/Courses/6.836 - Multicore Programming" "suvinay@hermes1.csail.mit.edu:~/courses/6th\ Semester\ -\ Spring\ 2014/"'
alias sync_with_home_no_del='rsync --stats -r -e ssh "/Users/suvinay/MIT/Courses/6.836 - Multicore Programming" "suvinay@hermes1.csail.mit.edu:~/courses/6th\ Semester\ -\ Spring\ 2014/"'
alias start_video="sudo killall VDCAssistant"
