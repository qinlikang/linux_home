# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH

eval `ssh-agent`
#ssh-add ~/.ssh/id_rsa
#ssh-add ~/.ssh/github_rsa
./mysshadd.exp
