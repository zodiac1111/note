#!/bin/sh

cd ~/Dropbox/wiki && \
	gollum \
		-h1-title \
		--allow-uploads dir \
		--collapse-tree &

