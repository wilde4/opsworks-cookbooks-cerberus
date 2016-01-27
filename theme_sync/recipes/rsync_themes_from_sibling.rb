# RSYNC THEMES FROM SIBLING

# nodes = search(:node, "name:*")
# theme_servers = nodes.select {|n| n["opsworks"]["layers"]["themes"] rescue nil }

theme_server = search(:node, "layers:themes").last
Chef::Log.info("**********The private IP address is: '#{theme_server[:private_ip]}'**********")

execute "rsync themes and assets" do
  command "rsync -arvce 'ssh -o StrictHostKeyChecking=no' --delete deploy@#{theme_server[:private_ip]}:/srv/www/oliver/shared/sync /srv/www/oliver/shared"
  user "deploy"
end