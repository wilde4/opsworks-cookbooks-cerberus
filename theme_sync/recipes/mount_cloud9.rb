# directory "/srv/www/oliver/shared/themes" do
#   mode 0755
#   owner 'deploy'
#   group 'www-data'
#   recursive true
#   action :create
# end

directory "/srv/www/themes" do
  mode 0755
  owner 'deploy'
  group 'www-data'
  recursive true
  action :create
end

execute "mount cloud9 to themes" do
  # node[:opsworks][:layers][:nfs][:instances].first[:private_ip]
  # node[:opsworks][:layers][:nfs][:instances].select{|x| x[:status] == "online"}.first[:private_ip]
  # old hardcoded ip: 10.0.0.42
  # command "sudo mount 10.0.0.42:/cloud9/cloud9 /srv/www/themes"
  Chef::Log.info("********** NFS Instances:  #{node[:opsworks][:layers][:nfs][:instances]}")

  # Find the first instance int he NFS layer that is currently online
  Chef::Log.info("********** The private IP address for NFS is: '#{node[:opsworks][:layers][:nfs][:instances].select{|k,v| v[:status] == "online"}.values.first[:private_ip]}' **********")
  command "sudo mount #{node[:opsworks][:layers][:nfs][:instances].select{|k,v| v[:status] == "online"}.values.first[:private_ip]}:/cloud9/cloud9 /srv/www/themes"
  user "root"
  not_if do ::File.exists?('/srv/www/oliver/shared/themes/eventbeat/layout/theme.liquid') end
end

execute "create symlink to themes" do
  command "ln -s /srv/www/themes/ /srv/www/oliver/shared/themes"
  user "deploy"
  not_if do ::File.exists?('/srv/www/oliver/shared/themes/eventbeat/layout/theme.liquid') end
end