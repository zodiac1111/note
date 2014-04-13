#!/bin/sh
# rsync -v -P -e ssh = rscp (alias)
rsync -v -P -e ssh -avH root@vps:/var/www/html/bt/ ~/Downloads/.bt/ --include="*.avi" --include="*.mp4" --include="*.jpg" --include="*.rmvb" --include="*.MP4" --include="*.wmv" --exclude="*.*"

