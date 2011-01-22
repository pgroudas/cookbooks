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
