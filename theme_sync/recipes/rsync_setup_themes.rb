# ===================
# = Trigger Volcanic Deploy RSYNC =
# ===================
execute "trigger rsync of themes and assets" do
  # CURL COMMAND WITH #{node[:opsworks][:instance][:private_ip]}
  Chef::Log.info("********** The private IP address for RSYNC is: '#{node[:opsworks][:instance][:private_ip]}' **********")
  command "curl -s -X POST -H 'Content-Type: application/json' -d '{ \"private_ip\": \"#{node[:opsworks][:instance][:private_ip]}\" }' http://deploy.volcanic.co.uk/api/v1/themes/setup_rsync.json"
  user "deploy"
  not_if do ::File.exists?('/srv/www/oliver/shared/sync/themes/production/eventbeat/layout/theme.liquid') end
end