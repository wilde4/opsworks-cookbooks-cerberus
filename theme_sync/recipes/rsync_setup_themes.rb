# ===================
# = Trigger Volcanic Deploy RSYNC =
# ===================
execute "trigger rsync of themes and assets" do
  # CURL COMMAND WITH #{node[:opsworks][:instance][:private_ip]}
  Chef::Log.info("********** The private IP address for RSYNC is: '#{node[:opsworks][:instance][:private_ip]}' **********")
  # command "curl -s -X POST -H 'Content-Type: application/json' -d '{ \"private_ip\": \"#{node[:opsworks][:instance][:private_ip]}\" }' http://deploy.volcanic.co.uk/api/v1/themes/setup_rsync.json"
  
  # STACK NAME FOR LIMITING THEMES TO RSYNC: node[:opsworks][:stack][:name]
  # command "rsync -arvce 'ssh -o StrictHostKeyChecking=no' --delete /srv/www/precompile_app/shared/sync deploy@#{node[:opsworks][:instance][:public_dns_name]}:/srv/www/oliver/shared"
  user "deploy"
end