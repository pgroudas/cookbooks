#
# Cookbook Name:: gitorious
# Recipe:: default
#
# Copyright 2011, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#todo make this conditional based on instance type...
include_recipe "gitorious::configure_swap"
include_recipe "gitorious::apt_packages"
include_recipe "gitorious::gems"
include_recipe "gitorious::sphinx"
include_recipe "gitorious::fetch_gitorious"
#Don't think this is necessary...
#include_recipe "gitorious::link_binaries"
include_recipe "gitorious::init_scripts"
include_recipe "gitorious::configure_apache"
include_recipe "gitorious::configure_mysql"