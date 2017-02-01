# ===================
# = Trigger Theme Sync from S3 =
# ===================
execute "trigger s3cmd sync ofassets" do
  command "s3cmd sync --recursive --config=/home/deploy/.s3cfg s3://#{node[:theme_sync][:theme_bucket_name]}/precompiled_assets/ /srv/www/oliver/shared/sync/precompiled_assets/"
  user "deploy"
  # not_if do ::File.exists?("/srv/www/oliver/shared/sync/themes/production/#{node[:theme_sync][:theme_to_test_for]}/layout/theme.liquid") end
end

execute "trigger s3cmd sync of themes" do
  command "s3cmd sync --recursive --config=/home/deploy/.s3cfg s3://#{node[:theme_sync][:theme_bucket_name]}/themes/ /srv/www/oliver/shared/sync/themes/"
  user "deploy"
  # not_if do ::File.exists?("/srv/www/oliver/shared/sync/themes/production/#{node[:theme_sync][:theme_to_test_for]}/layout/theme.liquid") end
end