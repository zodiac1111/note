**rtp头浅析**
```
RFC文档为RFC3550（RFC1889为其过期版本）
base+0(暂略)此处省略0x33字节
UDP数据区(base+0x33):
RTP header:(头数据)位于udp包的base+0x33地址(内容)
80 e0 69 37 3c 2e 6b 4e 6c 77 83 bf (大尾端[大端])网络字节序
详解(地址都+0x33)
地址	值	意义(不明...
0Byte 	80	[1 Byte] 
	`10b	版本号:RFC1889 Version 2
	`0b	填充? 否
	`0b	扩展? 否
	`0000b	特约来源识别码数：0
1	e0	[1 Byte]
	`1b	1(Marker丢弃?掩码)
	`110-0000b	负载类型(Payload type):DynamicRTP-Type-96 (96)
2	69	[2 Byte]序列号(Sequence):
3	37		0x6937=26935(十进制) 
4	3c	[4 Byte]时间戳
5	2e		0x3c2e6b4e=1009675086
6	6b		^^
7	4e		^^
8	6c	[4 Byte]同步源标识符
9	77		Synchronization Source identifier: 
10	83		0x6c7783bf (1819771839)
11	bf		^^
```