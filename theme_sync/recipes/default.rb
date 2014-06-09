template '/home/deploy/theme_sync.sh' do
  source "theme_sync.erb"
  mode "0777"
  variables(:opsworks => node[:opsworks])
end
