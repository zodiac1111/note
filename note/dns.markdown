加密dns,换tcp协议,换端口,防止gfw
https://github.com/opendns/dnscrypt-proxy/

	# dnscrypt-proxy -T

	/etc/resolv.conf 
	nameserver 127.0.0.1

dns测试

	dig @8.8.8.8 github
	dig @<DNS服务器> <检测的网站>
