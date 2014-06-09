template '/home/deploy/theme_sync.sh' do
  source "theme_sync.sh.erb"
  mode "0777"
  variables(:opsworks => node[:opsworks])
end
