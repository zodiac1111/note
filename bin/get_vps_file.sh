#!/bin/sh
# rsync -v -P -e ssh = rscp (alias)
rsync -v -P -e ssh -avH root@vps:/var/www/html/bt/ ~/Downloads/.bt/
