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