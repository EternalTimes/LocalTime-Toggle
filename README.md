解决Windows和MacOS的时间同步问题(支持MacOS 11.0.1 Big Sur). 这是一个本地脚本,用来解决MacOS和Windows之间的同步问题(安装了多重引导);
这个仓库是在 [harmc0re](http://www.insanelymac.com/forum/topic/264769-fix-the-time-difference-between-osx86-and-windows-in-multiboot-setups) 指令的基础上建立的;

#### 安装
1. 下载源代码ZIP文件并解压.
2. 到解压目录;
3. 运行命令:
```
sudo chmod +x fix_time_osx.sh
./fix_time_osx.sh
```

如果情况好的话,在最后一个命令输入后,你可能注意到时间又一次改变了;
和因特网同步时钟,或者手动调整时间,然后就可以了;

2021-01-18 22:17:00

作者原本用的是网络下载,并且用/sbin/存储程序,这就导致两个问题:

* 下载服务器不可用,尤其是中国大陆;
* /sbin/不可写,尤其是Big Sur;

本仓库解决了这两个问题,方式为:

* 程序直接包含在源代码中,不用从服务器下载;
* 使用/Users/Shared/sbin/代替/sbin/,经测试,可以成功运行;
