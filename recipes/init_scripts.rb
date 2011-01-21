cookbook_file "/etc/init.d/git-daemon" do
  source "git-daemon"
  mode 0755
end

cookbook_file "/etc/init.d/git-ultrasphinx" do
  source "git-ultrasphinx"
  mode 0755
end

cookbook_file "/etc/init.d/stomp" do
  source "stomp"
  mode 0755
  end

cookbook_file "/etc/init.d/git-poller" do
  source "git-poller"
  mode 0755
end

cookbook_file "/etc/logrotate.d/gitorious" do
  source "gitorious-logrotate"
  mode 0755
end

bash "initialize-scripts" do
  cwd "/tmp"
  code <<-EOH
    update-rc.d stomp defaults
    update-rc.d git-daemon defaults
    update-rc.d git-ultrasphinx defaults
    update-rc.d git-poller defaults
  EOH
end