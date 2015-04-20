# ==============================================
# = Allow App Server to pull themes are deploy =
# ==============================================
# template '/home/deploy/.ssh/id_rsa' do
#   source "id_rsa.erb"
#   owner "deploy"
#   mode "0600"
# end

# ==========================================================
# = Update rsync_themes script so themes pushed to DEPLOY box =
# ==========================================================

template '/home/deploy/rsync_themes.sh' do
  source "rsync_themes.sh.erb"
  owner "deploy"
  mode "0777"
  variables(:nodes => app_servers)
end

# EXECUTE BASH SCRIPT
execute "execute rsync_themes.sh" do
  command "/home/deploy/rsync_themes.sh"
  user "deploy"
end