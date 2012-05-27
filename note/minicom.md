#minicom不能输入的问题

>minicom是一个文本模式的终端模拟器,for类unix系统类似window下的超级终端.

###把流控去掉试试<br>

* Ctrl +A 
* Z 
* O 
*  serial port setup 
* F, G
* save setup as dfl

#Linux下minicom的配置和使用方法

>http://hi.baidu.com/zengzhaonong/blog/item/8427c633c835de40ac4b5f47.html

@2007年09月10日 星期一 19:26
安装配置minicom

	--------------------------------------------------
	# lsmod | grep usbserial (如果直接使用串口线，而没有用到USB转串口设备，此步可以跳过)
   如果有usbserial，说明系统支持USB转串口。 

安装minicom (Fedora自带有minicom，此步可以跳过)

	apt-get install minicom
	apt-get install lrzsz
配置minicom

	# minicom -s
	Serial port setup [Enter]

    +-------------------------------------------------------------+
    | A -    Serial Device      : /dev/ttyUSB0                    |
    | B - Lockfile Location     : /var/lock                       |
    | C -   Callin Program      :                                 |
    | D - Callout Program      -:                                 |
    | E -    Bps/Par/Bits       : 115200 8N1                      |
    | F - Hardware Flow Control : No                              |
    | G - Software Flow Control : No                              |
    |                                                             |
    |    Change which setting?                                    |
    +-------------------------------------------------------------+
注: 如果没有使用USB转接口，Serial Device要配置为/dev/ttyS0

   Save setup as dfl
   Exit from Minicom




使用minicom传输文件
--------------------------------------------------
# minicom
(Ctrl + a) --> s --> zmodem --> [Okay] --> 
    
    +-----------------------------------------+ 
    |No file selected - enter filename:       | 
    |> /home/zxl/ssl/codes/led/lls_led.ko     | [Enter]
    +-----------------------------------------+ 






注: download kernel by minicom in ubuntu