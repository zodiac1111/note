#Linux内核引导参数
>[http://lamp.linux.gov.cn/Linux/kernel_arguments.html](http://lamp.linux.gov.cn/Linux/kernel_arguments.html) 金步国:Linux内核引导参数简介


1. 使用`modinfo -p ${模块名}`命令显示可加载模块的所有可用参数.
2. 已经加载到内核中的模块会在 `/sys/module/${modulename}/parameters/` 中显示出其参数
