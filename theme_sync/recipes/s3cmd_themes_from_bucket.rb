# ===================
# = Trigger Theme Sync from S3 =
# ===================
execute "trigger s3cmd sync of themes and assets" do
  command "s3cmd sync --recursive s3://<%= node[:theme_sync][:theme_bucket_name] %> /srv/www/oliver/shared/sync/"
  user "deploy"
  not_if do ::File.exists?("/srv/www/oliver/shared/sync/themes/production/#{node[:theme_sync][:theme_to_test_for]}/layout/theme.liquid") end
end