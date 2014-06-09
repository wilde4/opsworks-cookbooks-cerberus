Chef::Log.info "Node info: #{search(:node, "name:*")}"

nodes = search(:node, "name:*")
app_servers = nodes.select {|n| n["layers"]["rails-app"] }

template '/home/deploy/theme_sync.sh' do
  source "theme_sync.sh.erb"
  owner "deploy"
  mode "0777"
  variables(:nodes => app_servers)
end
