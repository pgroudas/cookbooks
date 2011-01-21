#include_attribute "gitorious"gitorious

bash "create-mysql-git-user" do
  code "mysql -u root -e \"CREATE USER 'git'@'localhost' IDENTIFIED BY '#{node.mysql.users.git.password}';\""
end

bash "configure-mysql-git-user-priviledges" do
  code <<-EOH
    mysql -u root -e "GRANT CREATE ON *.* TO 'git'@'localhost'";
    mysql -u root -e "GRANT ALL ON gitorious_production.* TO 'git'@'localhost'";
    mysql -u root -e "FLUSH PRIVILEGES";
  EOH
end
