#
# Cookbook Name:: hello
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "httpd" do
	  action :install
end

template "/var/www/html/index.html" do
	  source "index.html"
	    mode 0644
end

service "httpd" do
	supports :status => true, :restart => true
	action [ :enable, :start ]
end
