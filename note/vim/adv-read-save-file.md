#进阶的读取 保存档案操作
:r file 读取file的内容 r=read	
:1,20w file 将当前文件1,20行写入到file中 1,20 范围,w=write
范围也可以是 1,$ 意味着1到最后一行
:1,20w >> file >>表示append附加 没有表示覆盖.

##同时打开多个文件(非标签页)
vi file1 file2 file3
:n 表示切换到下一个档案 n=next
:rew 返回最开始的档案 rew=rewind 回转
:n# 在两个档案之间切换
