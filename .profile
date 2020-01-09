#!/usr/bin/env bash

#TODO: i3 doesn't seem to read this
#export PROMPT_COMMAND="pwd > /tmp/whereami"

# add personal scripts to path
if [ -d "$HOME/projects/common/bin" ] ; then
    PATH="$HOME/projects/common/bin:$PATH"
fi

if [ -d "$HOME/projects/rztop/bin" ] ; then
    PATH="$HOME/projects/rztop/bin:$PATH"
fi

# add golang shit
export GOPATH=$HOME/go
export PATH=$PATH:$(go env GOPATH)/bin

# add rustlang shit
export PATH="$HOME/.cargo/bin:$PATH"

# start an ssh-agent
SSH_ENV="$HOME/.ssh/environment"
function start_agent {
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
}

if [ -f "${SSH_ENV}" ]; then
    . "${SSH_ENV}" > /dev/null
    ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi

