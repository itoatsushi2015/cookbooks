#
# Cookbook Name:: study
# Recipe:: php
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
