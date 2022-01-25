#!/bin/zsh
USER=nawan_graveofword
HOST=ssh.phx.nearlyfreespeech.net             
DIR=/home/public/   # the directory where your web site files should go

hugo && rsync -avz --delete public/ ${USER}@${HOST}:${DIR}

exit 0
