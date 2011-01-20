#ln -s /var/lib/gems/1.8/bin/rake /usr/bin
link "/usr/bin/rake" do
  to "/var/lib/gems/1.8/bin/rake"
end

#ln -s /var/lib/gems/1.8/bin/stompserver /usr/bin
link "/usr/bin/stompserver" do
  to "/var/lib/gems/1.8/bin/rake"
end