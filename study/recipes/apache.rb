#
# Cookbook Name:: study
# Recipe:: apache
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{php php-pdo php-mbstring php-mysqlnd}.each do |pkg|
  package pkg do
    action :install
  end
end

%w{httpd httpd-devel mod_ssl}.each do |pkg|
  package pkg do
    action :install
  end
end
 
service 'httpd' do
  supports :status => true, :restart => true, :reload => true
  action [ :enable, :start ]
end
 
template "/etc/httpd/conf/httpd.conf" do
  source "httpd-2.2.conf.erb"
end
