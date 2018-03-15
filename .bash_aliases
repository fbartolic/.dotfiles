## SSH aliases
alias ssh_ken='ssh fb90@kennedy.st-andrews.ac.uk'

## FTP aliases
alias sftp_ken='sftp fb90@kennedy.st-andrews.ac.uk'

## Use a long listing format ##
alias ll='ls -la'
alias la='ls -A'
alias l='ls -CF'

## Show hidden files ##
alias l.='ls -d .* --color=auto'

## Automatically do ls after cd
function cs() {
	cd "$@" && ls
}

## get rid of command not found ##
alias cd..='cd ..'

## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias mount='mount |column -t'
alias path='echo -e ${PATH//:/\\n}'

#Set nvim as default
alias vim='nvim'
alias svim='sudo nvim'
alias edit='nvim'
alias vimtex='NVIM_LISTEN_ADDRESS=/tmp/nvim_tex.sock nvim'

# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'

# update on one command
alias update='sudo apt-get update && sudo apt-get dist-upgrade'

#restart networking
alias resetwifi='sudo systemctl restart network-manager.service'
