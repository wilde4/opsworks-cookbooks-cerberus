# ======================================
# = Allow Devbox to push theme changes =
# ======================================
template '/home/deploy/.ssh/authorized_keys' do
  source "authorized_keys.erb"
  owner "deploy"
  mode "0600"
end

# ==============================================
# = Allow App Server to pull themes are deploy =
# ==============================================
template '/home/deploy/.ssh/id_rsa' do
  source "id_rsa.erb"
  owner "deploy"
  mode "0600"
end

# ===================
# = Pull Themes Now =
# ===================
execute "rsync themes and assets" do
  command "rsync -avz -e ssh deploy@#{node[:theme_sync][:ip]}:/cloud9/sync /srv/www/oliver/shared"
  user "deploy"
end


# ==========================================================
# = Update Push script so theme deploys to all App Servers =
# ==========================================================

# nodes = search(:node, "name:*")
# app_servers = nodes.select {|n| n["opsworks"]["layers"]["rails-app"] rescue nil }
#
# template '/home/deploy/theme_sync.sh' do
#   source "theme_sync.sh.erb"
#   owner "deploy"
#   mode "0777"
#   variables(:nodes => app_servers)
# end
