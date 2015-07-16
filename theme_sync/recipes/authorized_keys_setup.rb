# ======================================
# = Create Authorized Keys =
# ======================================
template '/home/deploy/.ssh/authorized_keys' do
  source "authorized_keys.erb"
  owner "deploy"
  mode "0600"
end
