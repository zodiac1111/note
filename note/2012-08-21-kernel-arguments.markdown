---
layout: post
title: "hello world"
date: 2012-07-03 09:01
comments: true
categories: 
---

#Linux内核引导参数
>[http://lamp.linux.gov.cn/Linux/kernel_arguments.html](http://lamp.linux.gov.cn/Linux/kernel_arguments.html) 金步国:Linux内核引导参数简介


1. 使用`modinfo -p <模块名>`命令显示可加载模块的所有可用参数.
2. 已经加载到内核中的模块会在 `/sys/module/<模块名>/parameters/` 中显示出其参数
3. 并且某些参数的值还可以在运行时通过`echo -n <value值> > /sys/module/<modulename模块名>/parameters/<parm参数>`命令修改。
4. 在内核运行起来之后，可以通过 `cat /proc/cmdline` 命令查看当初使用的引导参数以及相应的值。

绝大部分的内核引导参数的格式如下(每个参数的值列表中最多只能有十项)：

`name[=value_1][,value_2]...[,value_10]`

##标记说明

并不是所有的参数都是永远可用的，只有在特定的模块存在并且相应的硬件也存在的情况下才可用。引导参数上面的方括号说明了其依赖关系，其中使用的标记解释如下：
``` 
ACPI    高级配置与电源接口
APIC    高级可编程中断控制器
HW      相应的硬件设备存在
IA-32   IA-32(i386)体系结构
X86-64  X86-64体系结构，更多参数在 Documentation/x86_64/boot-options.txt 中描述
IOSCHED 启用了多个IO调度器
LIBATA  启用了Libata驱动
LOOP    启用了Loopback设备
NET     启用了网络支持
PCI     PCI总线支持
PNP     即插即用支持
PS2     PS/2支持
SCSI    许多SCSI设备的参数在 Documentation/scsi/ 中描述
SMP     对称多处理器
USB     USB支持
USBHID  USB人机界面设备
VT      虚拟终端(Virtual terminal)
```
