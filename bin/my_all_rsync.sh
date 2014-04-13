#!/bin/sh
# 同步所有需要同步的东西,很耗时间!! 一般在晚上没事干的时候同步
echo "start rsync @" `date +"%Y-%m-%d %H:%M:%S"` >> ~/rsync.log
rsync '/home/zodiac1111/Music/' '/media/zodiac1111/ext4/Music/'  -avH
rsync '/home/zodiac1111/tmp/' '/media/zodiac1111/ext4/tmp/'  -avH
rsync '/home/zodiac1111/Mysoft/' '/media/zodiac1111/ext4/Mysoft/' -avH
rsync '/home/zodiac1111/Downloads/' '/media/zodiac1111/ext4/Downloads/' -avH
rsync '/home/zodiac1111/Documents/' '/media/zodiac1111/ext4/Documents/' -avH
rsync '/home/zodiac1111/Dropbox/' '/media/zodiac1111/ext4/Dropbox/' -avH
rsync '/home/zodiac1111/workspace/' '/media/zodiac1111/ext4/workspace/' -avH
echo "end rsync @" `date +"%Y-%m-%d %H:%M:%S"` >> ~/rsync.log
