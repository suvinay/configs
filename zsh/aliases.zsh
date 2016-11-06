# Mount devices / file systems
# If using oh-my-zsh: put in $ZSH_FOLDER/custom/aliases.zsh
# If using bash: put i n $HOME/.bash_aliases
# Mount devices / file systems
alias os="cd /media/74B881C2B881837A/"
alias start_afs="kinit suvinay && klist ; aklog && tokens"

# Misc commands
alias update="su -c \"apt-get update;apt-get upgrade\""
alias ifconfig="/sbin/ifconfig"
#alias move_right="gconftool-2 --set /apps/metacity/general/button_layout --type string :minimize,maximize,close"
alias move_right="gsettings set org.gnome.desktop.wm.preferences button-layout 'menu:minimize,maximize,close'"
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
alias pbcopy='xsel --clipboard --input'     # read contents of std input to clipboard
alias pbpaste='xsel --clipboard --output'   # requires xsel package
alias ipconfig='nmcli dev list iface eth0 | grep IP4'

# Network
alias hermes="ssh -X suvinay@hermes1.csail.mit.edu"
alias mad="ssh -X suvinay@mad6.csail.mit.edu"
alias z="ssh -X suvinay@z.csail.mit.edu"
alias vlsifarm="ssh -X suvinay@vlsifarm-01.mit.edu"
alias eros="ssh -X eros-mtl1.mit.edu"
alias csailhome="cd /afs/csail.mit.edu/u/s/suvinay/"
alias athena="ssh -X athena.dialup.mit.edu"
alias linerva="ssh -X linerva.mit.edu"

# Applications
alias skype="sh -c 'export XLIB_SKIP_ARGB_VISUALS=1 && LD_PRELOAD=/usr/lib/libv4l/v4l1compat.so /usr/bin/skype'"
alias matlab="sudo /opt/matlab/bin/matlab"
alias matlab="/usr/local/MATLAB/R2011b/bin/matlab &"

# Sync, because open-afs misbehaves just when you most need it
alias sync_graphs='rsync --stats -a -e ssh --delete "suvinay@z.csail.mit.edu:~/research/projects/ordtm/ordspec-scripts/graph-scripts/load_balancing_graphs" ~/work/ordtm/graphs/'
alias sync_paper='rsync --stats -a -e ssh --delete "suvinay@z.csail.mit.edu:~/research/projects/ordtm/papers/isca17_fractal/isca17_fractal.pdf" ~/work/ordtm/paper/'
