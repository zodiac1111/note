# 壁纸文件生成器,默认就是生成 background-1.xml 文件 
# cd <想要生成的目录>
# mkwp.sh <图片1> <图片2> ... <图片n> >  [background-1.xml]
# 图片应该是绝对路径.可以直接从文件中拖拽到命令行

###########   可供设置的参数   ##########

# 1. 停留时间 (秒)
stoptime=300

# 2. 转换时间 (秒)
changetime=0

# 3 .生成的xml文件名称.默认在当前路径生成
filename="background-1.xml"


#############  生成文件部分  #############

# 生成文件头
echo -e "<background>" 										> ${filename}
echo -e "\t<starttime>"										>> ${filename}
echo -e "\t\t<year>2009</year>"								>> ${filename}
echo -e "\t\t<month>08</month>"								>> ${filename}
echo -e "\t\t<day>04</day>"									>> ${filename}
echo -e "\t\t<hour>00</hour>"								>> ${filename}
echo -e "\t\t<minute>00</minute>"							>> ${filename}
echo -e "\t\t<second>00</second>"							>> ${filename}
echo -e "\t</starttime>"									>> ${filename}
echo -e "<!-- This animation will start at midnight. -->"	>> ${filename}

# 遍历所有参数给出的图片文件
for(( i=1; i <= $#; ++i ))
do
		j=$[ $i + 1 ];
		# 前一个 和后一个图片
        pre="$(eval echo "\${$i}")";
		next="$(eval echo "\${$j}")";
		# 如果是最后一个则next指向第一个	
		echo -e "当前添加图片["$i"]:" "${pre}"	
		if (( $i == $# )) ;then
			 next="$(eval echo "\$1")";
		fi
		# 构造xml文本(循环部分)
		echo -e "\t<static>" 								>> ${filename}
		echo -e "\t\t<duration>"$stoptime"</duration>"		>> ${filename}
		echo -e "\t\t<file>"${pre}"</file>"					>> ${filename}
		echo -e "\t</static>"								>> ${filename}
  		echo -e "\t<transition>"							>> ${filename}
  		echo -e "\t\t<duration>"$changetime"</duration>"	>> ${filename}
  		echo -e "\t\t<from>"${pre}"</from>"					>> ${filename}
  		echo -e "\t\t<to>"$next"</to>"						>> ${filename}
		echo -e "\t</transition>"							>> ${filename}
done

# 文件尾
echo -e "</background>"										>> ${filename}

echo -e "共 \e[32m"$#"\e[0m 个图像.生成完成: \e[32m"${filename}"\e[0m"
