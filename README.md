1.在新系统中配置VIM需要在~目录（用户主目录）下建立.vim/bundle/文件夹，该文件夹用来安装Vundle和其他VIM插件;
2.Vundle需要手动clone到~/.vim/bundle/目录下;
3.将git仓库克隆到本地后切换到本地git仓库文件夹，创建硬链接：
    ln .vimrc ~/.vimrc
