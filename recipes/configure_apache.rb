#bash "install-passenger-apache2-module" do
#  code "/usr/bin/passenger-install-apache2-module -a"
#end

cookbook_file "/etc/apache2/mods-available/passenger.load" do
  source "passenger.load"
end


bash "enable-stuff" do
  code <<-EOH
    a2enmod passenger
    a2enmod rewrite
    a2enmod ssl
  EOH
end

cookbook_file "/etc/apache2/sites-available/gitorious" do
  source "sites-available-gitorious"
end

cookbook_file "/etc/apache2/sites-available/gitorious-ssl" do
  source "sites-available-gitorious-ssl"
end

bash "desable-sites" do
  code <<-EOH
    a2dissite default-ssl
    a2dissite default
    a2dissite gitorious-ssl
  EOH
end

bash "enable-sites" do
  code <<-EOH
    a2ensite gitorious
  EOH
end

service "apache2" do
  supports :status => true, :restart => true, :reload => true
  action [ :enable, :restart ]
end
