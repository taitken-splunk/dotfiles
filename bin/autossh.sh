#!/bin/sh
 
#if [ "X$SSH_AUTH_SOCK" = "X" ]; then
#    eval `ssh-agent -s`
#    ssh-add $HOME/.ssh/id_rsa
#fi
 
AUTOSSH_POLL=600
AUTOSSH_PORT=20000
AUTOSSH_GATETIME=30
AUTOSSH_LOGFILE=/tmp/autossh.log
AUTOSSH_DEBUG=yes 
AUTOSSH_PATH=/usr/bin/ssh
export AUTOSSH_POLL AUTOSSH_LOGFILE AUTOSSH_DEBUG AUTOSSH_PATH AUTOSSH_GATETIME AUTOSSH_PORT
 
autossh -2 -fN -M 20000 -v -D 1080 tavisto@node01.tavisto.net