# For cluster to launch interactive nodes
alias intactnode='srun -N 1 -c 2 -p gr3 --pty bash -i'
alias jupytercluster="jupyter-notebook --no-browser --port=8889 --ip=0.0.0.0"

# For mounting to cluster or supercomputer
alias sshfsreims="sshfs lyu@reims.issp.u-tokyo.ac.jp:/home/lyu/ $HOME/workstation -ovolname=reims"
alias sshfsohtaka="sshfs k014821@ohtaka.issp.u-tokyo.ac.jp:/home/k0148/k014821/ $HOME/systemb-issp -ovolname=ohtaka"
alias sshfskugui="sshfs k014821@kugui.issp.u-tokyo.ac.jp:/home/k0148/k014821/ $HOME/systemc-issp -ovolname=kugui"

# tmux aliases
alias ta='tmux attach'
alias tls='tmux ls'
alias tat='tmux attach -t'
alias tns='tmux new-session -s'
alias dev-tns='tmux new-session \; \
  send-keys 'vim' C-m \; \
  split-window -v \; \
  resize-pane -D 20 \; \
  split-window -h \; ' 
alias physcd='cd ~/OneDrive\ -\ The\ University\ of\ Tokyo/Physics/'
# download video as mp4 using cookies from chrome (For high quality videos)
yt-mp4-dl(){yt-dlp $1 --cookies-from-browser chrome -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best'}

# For listen to ports for reims cluster
sshlisten(){ssh -N -f -L $1:"$2":$1 lyu@reims.issp.u-tokyo.ac.jp}
sshkill(){lsof -ti tcp:$1 | xargs kill -9}
