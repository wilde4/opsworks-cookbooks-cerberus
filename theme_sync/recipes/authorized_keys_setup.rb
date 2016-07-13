# ======================================
# = Create Authorized Keys =
# ======================================
template '/home/deploy/.ssh/authorized_keys' do
  Chef::Log.info("********** node: '#{node.inspect}' **********")
  Chef::Log.info("********** node[:theme_sync]: '#{node[:theme_sync].inspect}' **********")
  Chef::Log.info("********** node[:theme_sync][:authorized_keys]: '#{node[:theme_sync][:authorized_keys]}' **********")
  source "authorized_keys.erb"
  owner "deploy"
  mode "0600"
end
