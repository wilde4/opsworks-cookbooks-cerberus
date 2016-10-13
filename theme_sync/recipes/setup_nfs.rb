template '/etc/exports' do
  Chef::Log.info("********** Writing /etc/exports **********")
  source "exports.erb"
  owner "root"
  mode "0600"
end

execute "start nfs service" do
  Chef::Log.info("********** Starting NFS service **********")
  command "service nfs-kernel-server start"
  user "root"
end