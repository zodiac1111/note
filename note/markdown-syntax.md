markdown/博客 基本语法
代码1:
	``` [language] [title] [url] [link text]
	code snippet
	```
	例如:
	``` c  
	int main()
	{
		int i;
		return 0;
	}
	$ sudo make me a sandwich
	```

代码2: http://octopress.org/docs/plugins/codeblock/

	{% codeblock [title] [lang:language] [url] [link text] %}
	code snippet
	{% endcodeblock %}
	#例如
	{% codeblock %}
	Awesome code snippet
	{% endcodeblock %}
	#例如
	{% codeblock lang:objc %}
	[rectangle setX: 10 y: 10 width: 20 height: 20];
	{% endcodeblock %}

图片Tag(博客)

	{% img [class names] /path/to/image [width] [height] [title text [alt text]] %}

例如

	{% img http://placekitten.com/890/280 %}
	{% img left http://placekitten.com/320/250 Place Kitten #2 %}
	{% img right http://placekitten.com/300/500 150 250 Place Kitten #3 %}
	{% img right http://placekitten.com/300/500 150 250 'Place Kitten #4' 'An image of a very cute kitten' %}

{% img http://placekitten.com/890/280 %}

Html5Video

	{% video url/to/video [width height] [url/to/poster] %}
	#例如:
	{% video http://s3.imathis.com/video/zero-to-fancy-buttons.mp4 640 320 http://s3.imathis.com/video/zero-to-fancy-buttons.png %}