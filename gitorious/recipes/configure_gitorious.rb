user "git" do
  system true
  home "/var/www/gitorious/"
  shell "/bin/bash"
end

bash "give-git-user-ownership-of-home-directory" do
  code "chown -R git:git /var/www/gitorious"
end

directory "/var/www/gitorious/.ssh" do
  owner "git"
  group "git"
  mode "0700"
  action :create
end

file "/var/www/gitorious/.ssh/authorized_keys" do
  owner "git"
  group "git"
  mode "0600"
  action :create
end

directory "/var/www/gitorious/tmp/pids" do
  owner "git"
  group "git"
  mode "0755"
  action :create
end

directory "/var/www/gitorious/repositories" do
  owner "git"
  group "git"
  mode "0755"
  action :create
end

directory "/var/www/gitorious/tarballs" do
  owner "git"
  group "git"
  mode "0755"
  action :create
end

template "/var/www/gitorious/config/broker.yml" do
  source "broker.yml.erb"
  mode 0644
  owner "git"
  group "git"
end

template "/var/www/gitorious/config/database.yml" do
  source "database.yml.erb"
  mode 0644
  owner "git"
  group "git"
end

template "/var/www/gitorious/config/gitorious.yml" do
  source "gitorious.yml.erb"
  mode 0644
  owner "git"
  group "git"
end
