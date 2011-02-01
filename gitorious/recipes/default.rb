#
# Cookbook Name:: gitorious
# Recipe:: default
#
# Copyright 2011, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#todo make this conditional based on instance type...
#include_recipe "gitorious::dependencies"
#include_recipe "gitorious::sphinx"
#include_recipe "gitorious::gitorious"
#include_recipe "gitorious::init_scripts"
#include_recipe "gitorious::configure_apache"
#include_recipe "gitorious::configure_mysql"
include_recipe "gitorious::configure_gitorious"