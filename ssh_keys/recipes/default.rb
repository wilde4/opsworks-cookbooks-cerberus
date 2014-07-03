template '/home/deploy/.ssh/authorized_keys' do
  source "authorized_keys.erb"
  owner "deploy"
  mode "0600"
end
template '/home/deploy/.ssh/id_rsa' do
  source "id_rsa.erb"
  owner "deploy"
  mode "0600"
end
