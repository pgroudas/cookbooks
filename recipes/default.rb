#
# Cookbook Name:: gitorious
# Recipe:: default
#
# Copyright 2011, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "gitorious::apt_packages"
include_recipe "gitorious::gems"
include_recipe "gitorious::sphinx"
include_recipe "gitorious::fetch_gitorious"
#Don't think this is necessary...
#include_recipe "gitorious::link_binaries"
