fedora 17 18 使能 mate dm（lightdm/mdm（曾经））
> https://lists.fedoraproject.org/pipermail/lxde/2012-October/000189.html

On Fedora 17:
yum install lightdm
Open /etc/sysconfig/desktop
Set
DISPLAYMANAGER="/usr/sbin/lightdm"
either reboot or restart prefdm.service (warning: you will get logged 
you when you are working in an active session started from LXDM)

On Fedora 18:

yum install lightdm
systemctl disable lxdm.service
systemctl enable lightdm.service
either reboot or stop lxdm.service (X session will stop) and start 
lightdm.service.
