bash "install-passenger-apache2-module" do
  cwd "/"
  code "/usr/bin/passenger-install-apache2-module -a"
end

