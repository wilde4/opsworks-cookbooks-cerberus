template '/etc/exports' do
  Chef::Log.info("********** Writing /etc/exports **********")
  source "exports.erb"
  owner "root"
  mode "0600"
end

execute "create cloud9 folder" do
  Chef::Log.info("********** Creating Clou9 folder **********")
  command "mkdir /cloud9/cloud9"
  user "root"
end

execute "start nfs service" do
  Chef::Log.info("********** Starting NFS service **********")
  command "service nfs-kernel-server start"
  user "root"
end