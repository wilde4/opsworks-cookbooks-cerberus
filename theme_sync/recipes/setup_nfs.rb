template '/etc/exports' do
  source "exports.erb"
  owner "root"
  mode "0600"
end

execute "start nfs service" do
  command "service nfs-kernel-server start"
  user "root"
end