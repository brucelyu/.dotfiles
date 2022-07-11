# For cluster to launch interactive nodes
alias intactnode='srun -N 1 -c 2 -p gr3 --pty bash -i'
alias jupytercluster="jupyter-notebook --no-browser --port=8889 --ip=0.0.0.0"

# For mounting to cluster or supercomputer
alias sshfsreims="sshfs lyu@reims.issp.u-tokyo.ac.jp:/home/lyu/ $HOME/workstation -o IdentityFile=$HOME/.ssh/id_rsa"

# For listen to ports for reims cluster
sshlisten(){ssh -N -f -L $1:"$2":$1 lyu@reims.issp.u-tokyo.ac.jp}
sshkill(){lsof -ti tcp:$1 | xargs kill -9}
