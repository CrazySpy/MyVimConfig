My MacVim Configuration
====
Used for vim.

How to use
------
1. Replace your .vimrc file with mine.
2. Copy the solarized.vim color scheme file to "~/.vim/colors/"(Your vim's default folder).
3. Install [Vundle](https://github.com/VundleVim/Vundle.vim#quick-start). It's used to manage your Vim Plugin.
4. Install all the plugins. I have configured the required plugins. You just need to type ":PluginInstall" under the normal mode, thanks to the Vundle plugin tool.
5. Compile the [YouCompleteMe](https://github.com/Valloric/YouCompleteMe#installation). And I have provided my .ycm_extra_conf.py. This file is used to set C++ syntax-check-compile parameters. Copy it to "~/"。
6. Configure the [asynctasks](https://github.com/skywind3000/asynctasks.vim) & [asyncrun](https://github.com/skywind3000/asyncrun.vim), as easy as code a bash shell. I have provided my configuration named ".tasks". Just copy it to "~/".
Default configuration
-----
#### Following plugins are used
1. [Vundle](https://github.com/VundleVim/Vundle.vim): To manage vim plugins freely.
2. [YouCompleteMe](https://github.com/Valloric/YouCompleteMe): Auto completion.
3. [vim-session](https://github.com/xolox/vim-session): To auto open the windows which opened at last time.
4. [nerdtree](https://github.com/scrooloose/nerdtree): To show the directory.
5. [ListToggle](https://github.com/Valloric/ListToggle): Toggle windows rapidly.
6. [delimitMate](https://github.com/Raimondi/delimitMate): Auto completion for '(', '{', etc. .
7. [tagbar](https://github.com/majutsushi/tagbar): To show the function name, class name, variables, etc. , and locate them easily.
8. [vim-misc](https://github.com/xolox/vim-misc): A support library.
9. [asynctasks](https://github.com/skywind3000/asynctasks.vim) & [asyncrun](https://github.com/skywind3000/asyncrun.vim): To complie the code and run the programmes.
10. [html5](https://github.com/othree/html5.vim): A HTML code formatter.

#### Default hot key
* Disable the paste function after pressing the middle key of the mouse(due to my Microsoft arctouch mouse)
* Command+D: Go to definition
* Command+F2: Open the directory tree window.
* Command+F3: Open the location window. It's used to locate errors.
* Command+F4: Open the quickfix window. It's used to show the messages during compiling step.
* Command+F5: Run the current programme (based on asynctasks configuration).
* Command+F6: Compile (based on asyncrun configuration).
* Command+F7: List of functions, variables, classes, etc. .
You can get more offical hot keys by reference offical documentation.
***
MacVim配置文件
====
用于MacVim的vim配置文件

使用方法
------
1. 将.vimrc文件覆盖你当前的配置文件。
2. 请将solarized.vim配色文件放到~/.vim/colors/下。
3. 安装[Vundle](https://github.com/VundleVim/Vundle.vim#quick-start)插件管理工具。
4. 在MacVim的normal模式下输入":PluginInstall"安装所有插件。
5. 编译安装[YouCompleteMe](https://github.com/Valloric/YouCompleteMe#installation)。这里提供了.ycm_extra_conf.py用作代码检查时编译C++的配置，可直接拷贝至“~/”。
6. 配置[asynctasks](https://github.com/skywind3000/asynctasks.vim)及[asyncrun](https://github.com/skywind3000/asyncrun.vim)，其实就是一个简单的bash shell。本项目提供了命名为".tasks"的配置文件，直接拷贝至“~/”即可。


默认设置
-----
#### 本配置文件使用了以下插件
1. [Vundle](https://github.com/VundleVim/Vundle.vim) 用于插件快速安装、禁用
2. [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) 用于快速补全
3. [vim-session](https://github.com/xolox/vim-session) 用于记住上次打开窗口等功能
4. [nerdtree](https://github.com/scrooloose/nerdtree) 目录树
5. [ListToggle](https://github.com/Valloric/ListToggle) 用于快速toggle打开/关闭vim窗口
6. [delimitMate](https://github.com/Raimondi/delimitMate) 括号等的自动匹配补全
7. [tagbar](https://github.com/majutsushi/tagbar) 显示代码中的函数、变量、类等，并且可以快速定位
8. [vim-misc](https://github.com/xolox/vim-misc) vim的支持库
9. [asynctasks](https://github.com/skywind3000/asynctasks.vim)及[asyncrun](https://github.com/skywind3000/asyncrun.vim) 快速编译代码
10. [html5](https://github.com/othree/html5.vim) 对HTML代码缩进

#### 本配置文件默认快捷键
* 鼠标中键粘贴关闭(因为我的arctouch容易误触)
* Command+D:Go to definition (YouCompleteMe提供)
* Command+F2:打开目录树窗口 (nerdtree提供)
* Command+F3:打开location窗口，用以快速定位错误 (错误内容由YouCompleteMe提供,toggle开关由ListToggle提供)
* Command+F4:打开quickfix窗口，用以在编译时输出错误 (错误内容由YouCompleteMe提供,toggle开关由ListToggle提供)
* Command+F5:运行当前程序，前提是已经编译或可以进行解释。具体配置参照asynctasks(由asynctasks提供)
* Command+F6:编译，配置请参照vimmake (由asyncrun提供)
* Command+F7:函数、变量、类等列表窗口 (由tagbar提供)
其它快捷键请参考vim及MacVim官方文档
