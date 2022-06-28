# For cluster to launch interactive nodes
alias intactnode='srun -N 1 -c 2 -p gr3 --pty bash -i'
alias jupytercluster="jupyter-notebook --no-browser --port=8889 --ip=0.0.0.0"
