# alias TODO 按照debian的方式将alias放到特定文件中分开管理
alias rscp='rsync -v -P -e ssh' # 支持断点续传的scp
alias rscp2='rsync -v -P -e "ssh -p 2200"' # 支持断点续传的scp
alias vps='ssh root@1.gbzdsq.com' #登录vps
alias vh='vim /etc/hosts' # 快速打开hosts文件
alias yum='apt-get' #习惯
alias yum-search="apt-cache search" #习惯2

#tmux 脱离后快速返回
alias tmuxattach="tmux attach" #

#快速转化gb2312到文本 ,先备份,在转换,仅接受一个参数为文件名.
# 2utf8 file-with-gb2312-encode.txt 
#alias 2utf8='iconv -f gb2312 -t utf-8 '
# set -x
function 2utf8
{
	file=$1 ;
	cp "$file" "$file.txt" ;
	iconv -f gb2312 -t utf-8 "$file.txt" > "$file" ; 
}
