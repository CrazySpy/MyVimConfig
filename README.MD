MacVim配置文件
====

介绍
-----
本配置文件使用了以下插件:
### 1.Vundle 用于插件快速安装、禁用
### 2.YouCompleteMe 用于快速补全
### 3.vim-session 用于记住上次打开窗口等功能
### 4.nerdtree 目录树
### 5.ListToggle 用于快速toggle打开/关闭vim窗口
### 6.delimitMate 快速代码格式化
### 7.tagbar 显示代码中的函数、变量、类等，并且可以快速定位
### 8.tabular 文本快速对齐
### 9.vim-misc vim的支持库
### 10.vimmake 快速编译代码

使用方法
------
### 1.请将solarized.vim配色文件放到~/.vim/colors/下
### 2.安装Vundle插件管理工具
具体请参考
	>https://github.com/VundleVim/Vundle.vim#quick-start
### 3.在MacVim的normal模式下输入":PluginInstall"安装所有插件
### 4.编译安装YouCompleteMe
具体参考
	>https://github.com/Valloric/YouCompleteMe#installation
###	5.配置vimmake
具体参考
	>https://github.com/skywind3000/vimmake

默认设置
-----
*鼠标中键粘贴关闭(因为我的arctouch容易误触)
*Command+D:Go to definition (YouCompleteMe提供)
*Command+F2:打开目录树窗口 (nerdtree提供)
*Command+F3:打开location窗口，用以快速定位错误 (错误内容由YouCompleteMe提供,toggle开关由ListToggle提供)
*Command+F4:打开quickfix窗口，用以在编译时输出错误 (错误内容由YouCompleteMe提供,toggle开关由ListToggle提供)
*Command+F5:运行当前程序，前提是已经编译或可以进行解释。具体配置参照vimmake(由vimmake提供)
*Command+F6:编译，配置请参照vimmake (由vimmake提供)
*Command+F7:函数、变量、类等列表窗口 (由tagbar提供)
*+:代码格式化 (由delimitMate提供)




