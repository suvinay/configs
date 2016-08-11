# zsim
export PYTHONPATH=/data/sanchez/tools/pymodules/lib/python2.7/site-packages:$PYTHONPATH

ZSIMDEPSROOT=/data/sanchez/benchmarks/zsim-deps
#export PINPATH=$ZSIMDEPSROOT/pin/
export LIBCONFIGPATH=$ZSIMDEPSROOT/libconfig-1.4.9/inst/
export POLARSSLPATH=$ZSIMDEPSROOT/polarssl-1.1.4/
export DRAMSIMPATH=$ZSIMDEPSROOT/DRAMSim2/
export ZSIMAPPSPATH=/data/sanchez/benchmarks/zsim-apps/

# For Ordspecsim
export PINPATH=$ZSIMDEPSROOT/pin-2.14-71313-gcc.4.4.7-linux
export PIN_HOME=$PINPATH
export PIN_ROOT=${PIN_HOME}
export PIN_KIT=${PIN_HOME}
export PATH=${PATH}:${PIN_HOME}
export GALOIS_DO_NOT_BIND_MAIN_THREAD=1
export ZSIMARMADILLOPATH=$ZSIMDEPSROOT/armadillo/
export PATH=$PATH:/data/sanchez/tools/llvm-3.7.1/bin

# For CityHash
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib

# Gurobi
export TOOLS_HOME=/data/sanchez/tools
export GUROBI_HOME=$TOOLS_HOME/gurobi/gurobi550/linux64
export PATH=$PATH:$GUROBI_HOME/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$GUROBI_HOME/lib
export GRB_LICENSE_FILE=$TOOLS_HOME/gurobi/licenses/$USER/$HOSTNAME.lic

# For ordspec-benchmarks competition runtime
source /data/sanchez/tools/parallel_studio_xe_2015/composer_xe_2015.2.164/bin/compilervars.sh intel64

# Paths to folders
export ORDSIM=$HOME/research/projects/ordtm/ordspecsim/
export ORDBENCH=$HOME/research/projects/ordtm/ordspec-benchmarks/
export ORDSCRIPTS=$HOME/research/projects/ordtm/ordspec-scripts/
export OSSTEMP=$HOME/temp/ordspecsim/
export PLSAPPS=/data/sanchez/benchmarks/pls-apps/
export RESULTS=/data/sanchez/results/suvinay/

# Local PATH vars
export PATH=$HOME/bin:$PATH
