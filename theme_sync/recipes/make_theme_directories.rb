# PRODUCTION
directory "/srv/www/oliver/shared/sync/precompiled_assets/production" do
  mode 0755
  owner 'deploy'
  group 'www-data'
  recursive true
  action :create
end

directory "/srv/www/oliver/shared/sync/themes/production" do
  mode 0755
  owner 'deploy'
  group 'www-data'
  recursive true
  action :create
end

# STAGING
directory "/srv/www/oliver/shared/sync/precompiled_assets/staging" do
  mode 0755
  owner 'deploy'
  group 'www-data'
  recursive true
  action :create
end

directory "/srv/www/oliver/shared/sync/themes/staging" do
  mode 0755
  owner 'deploy'
  group 'www-data'
  recursive true
  action :create
end