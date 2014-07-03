execute "rsync themes and assets" do
  command "rsync -avz -e ssh deploy@#{deploy[:pull_themes][:ip]}:/cloud9/sync /srv/www/oliver/shared"
  user "deploy"
end