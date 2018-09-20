# My personal .zprofile
# Find me on github(@lap00za)
#
# -- Notes to myself --
# * 7zip, vlc and a few other programs  are symlinked in /usr/local/bin
# * Haven't touched .zshrc. It is managed by oh-my-zsh
# * This is meant to be run under cygwin (need cygpath for defender)
#

export GITHUB="https://github.com/@lap00zza"

# ---
# why alias defender? coz stupid defnder cant be symlinked in /usr/local/bin
# Keeps throwing library error.
alias defender="/c/Program Files/Windows Defender/MpCmdRun.exe"
defender_scan() {
	echo "Initiating Windows Defender..."
	defender -Scan -ScanType 3 -File $(cygpath -aw $1)
}

# SSH Agent Wrapper
# This wrapper will make sure ssh-agent is used across mintty sessions.
# NOTE: Don't mess with .ssh-agent-proc file. Its needed for persistence.
# TODO: This function is not ready for prime time
ssh_agent_start() {
	if (((ps | grep "ssh-agent") && (ls -a | grep ".ssh-agent-proc")) > /dev/null 2>&1) 
	then
		echo ".ssh-agent-proc exists"
		eval $(cat .ssh-agent-proc)
	else
		echo ".ssh-agent-proc does not exist. Starting new ssh-agent"
		ssh-agent > .ssh-agent-proc
		eval $(cat .ssh-agent-proc)
		ssh-add
	fi
}
