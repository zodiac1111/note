#使chromium支持pdf预览
chrome使用libpdf.so库,这个库不是自由软件,所以chromium默认没有带
/opt/google/chrome/libpdf.so
##安装
复制 /opt/google/chrome/libpdf.so 到chrome-linux(chromium)下

`chrome://plugins/` Chrome PDF Viewer

#参考资料

1. 简单的解决方式:<http://askubuntu.com/questions/12584/why-doesnt-chromium-have-chrome-pdf-viewer-plugin>
2. chromium issues:<https://code.google.com/p/chromium/issues/detail?id=50852#c16>
3. libpdf.so
