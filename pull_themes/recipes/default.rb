execute "rsync themes and assets" do
  cwd deploy[:current_path]
  command "rsync -avz -e ssh deploy@#{deploy[:pull_themes][:ip]}:/cloud9/sync /srv/www/oliver/shared"
  user "deploy"
end