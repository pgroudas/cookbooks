directory "/var/www/gitorious" do
#  owner u['id']
#  group u['gid'] || u['id']
  mode "0755"
end

git "/var/www/gitorious" do
  repository "git://gitorious.org/gitorious/mainline.git"
  reference "master"
  action :sync
end

#ln -s /var/www/gitorious/script/gitorious /usr/bin
link "/usr/bin/gitorious" do
  to "/var/www/gitorious/script/gitorious"
end