#!/bin/bash
# OS: Ubuntu 18.04

sudo apt-get -y update && sudo apt-get -y upgrade
sudo apt-get -y install

###############################
#                             #
#          SETTINGS           #
#                             #
# #############################

# minimize on dock icon click
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'


###############################
#                             #
#          SOFTWARES          #
#                             #
# #############################

# tmux
sudo apt-get -y install tmux

# curl
sudo apt-get -y install curl

# vlc media player
sudo apt-get -y install vlc

# aria2
sudo apt-get -y install aria2

# gnome tweak tool
sudo add-apt-repository universe
sudo apt-get install gnome-tweak-tool -y

# synaptic package manager
sudo apt-get install synaptic -y

# gnome shell extensions 
sudo apt-get install gnome-shell-extensions -y

# dconf editor 
sudo apt-get install dconf-editor -y

# chrome gnome shell
sudo apt-get install chrome-gnome-shell -y
# go to extensions.gnome.org
# install Dash to Panel by jderose9 https://extensions.gnome.org/extension/1160/dash-to-panel/
# install Arc Menu by LinxGem33 https://extensions.gnome.org/extension/1228/arc-menu/
# install OpenWeather by jens https://extensions.gnome.org/extension/750/openweather/
# install Workspace Grid by zakkak https://extensions.gnome.org/extension/484/workspace-grid/

# virtualbox
# wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
# wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
# sudo add-apt-repository "deb http://download.virtualbox.org/virtualbox/debian `lsb_release -cs` contrib"
# sudo apt-get update -y
# sudo apt-get install virtualbox-5.2 -y

# hp printer tool
# https://websiteforstudents.com/installing-hp-printer-drivers-on-ubuntu-16-04-17-10-18-04-desktop/
# sudo apt-get -y install hplip 

# vscode 
# sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make
# sudo apt-get install ubuntu-make
# umake ide visual-studio-code

###############################
#                             #
#    PROGRAMMING SOFTWARES    #
#                             #
# #############################

# git
sudo apt-get -y install git 

# nodejs
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo chown -R $USER:$(id -gn $USER) /home/yuchiu/.config #grant permission for nodejs
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p # Increasing the amount of inotify watchers, prevent error"ENOSPC no space left on device"
sudo npm i -g cross-env eslint tslint

#install npm packages globally
sudo npm i -g create-react-app

# python3
sudo apt-get install python3.6

# pip3
sudo apt-get -y install python3-pip

# install python scraper libraries
pip3 install requests selenum beautifulsoup4 pyquery pymysql pymongo redis flask django jupyter

# nginx
sudo apt-get -y install nginx
sudo systemctl start nginx
sudo systemctl enable nginx

# rabbitmq
sudo apt-get -y install erlang
sudo apt-get -y install rabbitmq-server
sudo systemctl enable rabbitmq-server
sudo systemctl start rabbitmq-server
sudo rabbitmq-plugins enable rabbitmq_management # default port: http://[ip_address]:15672/
sudo rabbitmqctl add_user admin admin
sudo rabbitmqctl set_user_tags admin administrator
sudo rabitmqctl set_permissions -p / admin ".*" ".*" ".*"

# tools & setting 
sudo apt-get install gcc g++ autoconf libpcre3 libpcre3-dev make automake -y
sudo apt-get install wget apache2-utils -y

# mysql
echo "mysql-server mysql-server/root_password password root" | sudo debconf-set-selections
echo "mysql-server mysql-server/root_password_again password root" | sudo debconf-set-selections
sudo apt-get -y install mysql-server mysql-client
sudo systemctl start mysql
sudo systemctl enable mysql

# postgres (not finish yet, need to setup default password afterward)
sudo apt-get install postgresql postgresql-contrib -y

# mongodb (not finish yet)
sudo apt-get install -y mongodb

# # redis (not finished, details link https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-redis-on-ubuntu-16-04)
# sudo apt-get install build-essential tcl
# cd /tmp
# curl -O http://download.redis.io/redis-stable.tar.gz
# tar xzvf redis-stable.tar.gz
# cd redis-stable
# make
# make test
# sudo make install
# sudo mkdir /etc/redis
# sudo cp /tmp/redis-stable/redis.conf /etc/redis
# sudo nano /etc/redis/redis.conf

# install java8
# sudo apt-add-repository ppa:webupd8team/java
# sudo apt-get update -y
# sudo apt-get install oracle-java8-installer -y