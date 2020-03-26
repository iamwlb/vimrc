###
 # @Author: 王丽兵
 # @Date: 2019-11-29 12:21:07
 # @LastEditTime: 2020-03-26 16:00:59
 # @LastEditors: 王丽兵
 # @Description: 
 # @FilePath: /blog/Users/iamwlb/Documents/Workspace/ vim/vimrc/publish.sh
 ###
#!/bin/bash
# Program: publish source to git
# Author 王丽兵
msg=$1
if [ -n "$msg" ]; then
    workPath=$(pwd)
    cd $workPath
    cp ~/.vimrc ./
    echo ' ' | sudo -S git add .
    echo ' ' | sudo -S git commit -m "${msg}"
    echo ' ' | sudo -S git push origin master
    echo -e "\033[32m[源码提交成功]\033[0m"
    echo "###############################################################"
else
    echo -e "\033[31m\033[01m 请添加注释再来一遍。格式如下： \033[0m"
    echo -e "\033[31m\033[01m $ ./publish.sh \"注释内容\" \033[0m"
fi