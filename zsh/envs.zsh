# Paths to folders
export ORDSIM=$HOME/Myspace/projects/ordspecsim/
export ORDBENCH=$HOME/Myspace/projects/ordspec-benchmarks/
export ORDSCRIPTS=$HOME/Myspace/projects/ordspec-scripts/
export OSSTEMP=$HOME/temp/ordspecsim/

# For Macports
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# For python virtualenv
export PATH=/usr/local/bin:$PATH
export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
export PIP_REQUIRE_VIRTUALENV=true  # Require virtualenv whenever using pip
gpip(){                             # ... unless forced to install global
   PIP_REQUIRE_VIRTUALENV="" pip "$@"
}
# gpip install --upgrade pip setuptools wheel virtualenv
# Thanks: https://hackercodex.com/guide/python-development-environment-on-mac-osx/

# For Postgresql
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
