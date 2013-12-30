#!/bin/bash

echo 'After script'
echo 'Installing gems...'
gem install chef
knife configure
cp -r /home/vagrant/data/chef-solo /home/vagrant/
cd /home/vagrant/chef-solo/cookbooks/
git clone https://github.com/opscode-cookbooks/zsh.git
#bundle install --gemfile=/vagrant/Gemfile


