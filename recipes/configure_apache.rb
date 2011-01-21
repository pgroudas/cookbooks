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
    a2ensite default-ssl
  EOH
end

service "apache2" do
  supports :status => true, :restart => true, :reload => true
  action [ :enable, :restart ]
end
