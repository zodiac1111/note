#wireshark-gnome fedora17 错误

#现象:

WARNING: gnome-keyring:: couldn't connect to: /run/user/user1/keyring-muQnuX/pkcs11: 没有那个文件或目录
段错误(吐核)

#解决方法:
1. 64位 `yum update http://kojipkgs.fedoraproject.org//packages/libsmi/0.4.8/9.fc17/x86_64/libsmi-0.4.8-9.fc17.x86_64.rpm`
2. 32位 `yum update http://kojipkgs.fedoraproject.org//packages/libsmi/0.4.8/9.fc17/i686/libsmi-0.4.8-9.fc17.i686.rpm`

#参考解决方案来源:
<http://forums.fedora-fr.org/viewtopic.php?pid=508545>
<https://bugzilla.redhat.com/show_bug.cgi?id=864324>
