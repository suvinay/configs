# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_colored_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

#BASH COLORS (VARUN HIREMATH)

BLACK="\[\e[0;30m\]"
DARK_GRAY="\[\e[1;30m\]"
RED="\[\e[0;31m\]"
LIGHT_RED="\[\e[1;31m\]"
GREEN="\[\e[0;32m\]"
LIGHT_GREEN="\[\e[1;32m\]"
BROWN="\[\e[0;33m\]"
LIGHT_BROWN="\[\e[1;33m\]"
YELLOW="\[\e[1;33m\]"
BLUE="\[\e[0;34m\]"
LIGHT_BLUE="\[\e[1;34m\]"
PURPLE="\[\e[0;35m\]"
LIGHT_PURPLE="\[\e[1;35m\]"
CYAN="\[\e[0;36m\]"
LIGHT_CYAN="\[\e[1;36m\]"
LIGHT_GRAY="\[\e[0;37m\]"
WHITE="\[\e[0;37m\]"
LIGHT_WHITE="\[\e[1;37m\]"
NO_COLOUR="\[\e[0m\]"

source ~/.git-prompt.sh

if [ "$color_prompt" = yes ]; then
#    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    PS1="${LIGHT_GREEN}\u@$HOSTNAME${WHITE}:${CYAN}\W${LIGHT_RED}\$(__git_ps1)${LIGHT_WHITE}$ ${LIGHT_WHITE}"
else
#    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
    PS1="${LIGHT_GREEN}\u@$HOSTNAME${WHITE}:${CYAN}\W${LIGHT_RED}\$(__git_ps1)${LIGHT_WHITE}$ ${WHITE}"
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
    ;;
*)
    ;;
esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ] && [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    alias dir='ls --color=auto --format=vertical'
    alias vdir='ls --color=auto --format=long'

    #alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

# For kerberos credentials
export KRB5CCNAME=~/.krbcc/MyOwn

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# For tools - gem5 etc.
# source /afs/csail/group/lsp/tools/setup_tools.sh

# zsim
export PYTHONPATH=/data/sanchez/tools/pymodules/lib/python2.7/site-packages:$PYTHONPATH

ZSIMDEPSROOT=/data/sanchez/benchmarks/zsim-deps
#export PINPATH=$ZSIMDEPSROOT/pin/
export LIBCONFIGPATH=$ZSIMDEPSROOT/libconfig-1.4.9/inst/
export POLARSSLPATH=$ZSIMDEPSROOT/polarssl-1.1.4/
export DRAMSIMPATH=$ZSIMDEPSROOT/DRAMSim2/
export ZSIMAPPSPATH=/data/sanchez/benchmarks/zsim-apps/

# For Ordspec
export PINPATH=$ZSIMDEPSROOT/pin-2.14-71313-gcc.4.4.7-linux
export PIN_HOME=$PINPATH
export PIN_ROOT=${PIN_HOME}
export PIN_KIT=${PIN_HOME}
export PATH=${PATH}:${PIN_HOME}
export GALOIS_DO_NOT_BIND_MAIN_THREAD=1
export ZSIMARMADILLOPATH=$ZSIMDEPSROOT/armadillo/
export PATH=$PATH:/data/sanchez/tools/llvm-3.7.1/bin

# Gurobi
export TOOLS_HOME=/data/sanchez/tools
export GUROBI_HOME=$TOOLS_HOME/gurobi/gurobi550/linux64
export PATH=$PATH:$GUROBI_HOME/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$GUROBI_HOME/lib
export GRB_LICENSE_FILE=$TOOLS_HOME/gurobi/licenses/$USER/$HOSTNAME.lic

# For 6.836
HW_DIR=/afs/csail.mit.edu/proj/courses/6.816/student-repos/spring14/homeworks

# For 6.886 Spring'15 [[ Performance Engineering for Advanced Multicore Applications ]]
export KYOTOLIBPATH=/afs/csail.mit.edu/u/s/suvinay/pkg/kyoto-lib/lib
export KYOTOBINPATH=/afs/csail.mit.edu/u/s/suvinay/pkg/kyoto-lib/bin
export PATH=${PATH}:${KYOTOBINPATH}
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${KYOTOLIBPATH}

# For bitbucket ssh-agent
SSH_ENV=$HOME/.ssh/environment
   
# start the ssh-agent
function start_agent {
    echo "Initializing new SSH agent..."
    # spawn ssh-agent
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    echo succeeded
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add
}
   
if [ -f "${SSH_ENV}" ]; then
     . "${SSH_ENV}" > /dev/null
     ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi

### For ordspec-benchmarks competition runtime
source /data/sanchez/tools/parallel_studio_xe_2015/composer_xe_2015.2.164/bin/compilervars.sh intel64
