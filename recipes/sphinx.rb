remote_file "sphinx" do
  path "/tmp/sphinx.tar.gz"
  source "http://sphinxsearch.com/files/sphinx-0.9.9.tar.gz"
end

bash "untar-sphinx" do
  cwd "/tmp"
  code "tar zxvf /tmp/sphinx.tar.gz"
end

bash "install-sphinx" do
  cwd "/tmp/sphinx-0.9.9"
  code "./configure --prefix=/usr && make all install"
end