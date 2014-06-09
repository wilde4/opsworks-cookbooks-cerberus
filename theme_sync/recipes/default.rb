Chef::Logger.info "Node info: #{search(:node, "name:*")}"

template '/home/deploy/theme_sync.sh' do
  source "theme_sync.sh.erb"
  owner "deploy"
  mode "0777"
  variables(:opsworks => node[:opsworks])
end
