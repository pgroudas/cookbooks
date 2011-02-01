#Known gitorious dependencies
#TODO, get specific versions?
#TODO, detect if swap is configured
package "dphys-swapfile"
package "build-essential"
package "zlib1g-dev"
package "tcl-dev"
package "libexpat1-dev"
package "libcurl4-openssl-dev"
package "postfix"
package "apache2"
package "mysql-server"
package "mysql-client"
package "apg"
package "geoip-bin"
package "libgeoip1"
package "libgeoip-dev"
package "sqlite3"
package "libsqlite3-dev"
package "imagemagick"
package "libpcre3"
package "libpcre3-dev"
package "zlib1g"
package "zlib1g-dev"
package "libyaml-dev"
package "libmysqlclient-dev"
package "apache2-threaded-dev"
package "libonig-dev"
package "ruby-dev"
package "rubygems"
package "libruby"
package "phpmyadmin"
package "libdbd-mysql-ruby"
package "libmysql-ruby"
package "libmagick++-dev"
package "zip"
package "unzip"
package "memcached"
package "git-core"
package "git-svn"
package "git-doc"
package "git-cvs"
package "ruby"

#Known gem dependencies with know working versions
gem_package "chronic" do
  version "0.3.0"
end
gem_package "daemons" do
  version "1.1.0"
end
gem_package "diff-lcs" do
  version "1.1.2"
end
gem_package "echoe" do
  version "4.3.1"
end
gem_package "geoip" do
  version "0.8.9"
end
gem_package "hoe" do
  version "2.8.0"
end
gem_package "json" do
  version "1.4.6"
end
gem_package "mime-types" do
  version "1.16"
end
gem_package "passenger" do
  version "3.0.2"
end
gem_package "rack" do
  version "1.0.1"
end
gem_package "rails" do
  version "2.3.10"
end
gem_package "rake" do
  version "0.8.7"
end
gem_package "rdiscount" do
  version "1.3.1.1"
end
gem_package "rmagick" do
  version "2.13.1"
end
gem_package "ruby-hmac" do
  version "0.4.0"
end
gem_package "ruby-openid" do
  version "2.1.8"
end
gem_package "ruby-yadis" do
  version "0.3.4"
end
gem_package "stomp" do
  version "1.1"
end
gem_package "stompserver" do
  version "0.9.9"
end
