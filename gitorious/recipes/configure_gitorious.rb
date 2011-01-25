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

file "/var/www/gitorious/log/production.log" do
  owner "git"
  group "root"
  mode "0666"
  action :create
end

file "/var/www/gitorious/log/message_processing.log" do
  owner "git"
  group "root"
  mode "0666"
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

bash "bootstrap-rails-environment" do
  user "git" #which should this be?
  cwd "/var/www/gitorious"
  code <<-EOH
    export RAILS_ENV=production &&
    /usr/bin/rake db:create &&
    /usr/bin/rake db:migrate &&
    /usr/bin/rake ultrasphinx:bootstrap > /var/www/gitorious/log/test_output.log &&
    /usr/bin/crontab -r &&
    echo "* */1 * * * cd /var/www/gitorious && /usr/bin/rake ultrasphinx:index RAILS_ENV=production" | /usr/bin/crontab
  EOH
end
