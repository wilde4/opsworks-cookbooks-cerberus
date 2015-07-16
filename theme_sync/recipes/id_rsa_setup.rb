# ==============================================
# = Create id_rsa =
# ==============================================
template '/home/deploy/.ssh/id_rsa' do
  source "id_rsa.erb"
  owner "deploy"
  mode "0600"
end
