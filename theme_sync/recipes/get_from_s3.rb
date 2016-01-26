# DOWNLOAD ALL THEMES AND ASSETS FROM S3 BUCKET

execute "download themes and assets from s3" do
  command "s3cmd get --recursive s3://oliver-themes /srv/www/oliver/shared/sync/"
  user "deploy"
end