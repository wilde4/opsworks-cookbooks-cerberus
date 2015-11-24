# THEME IMPORT LOCATION
directory "/srv/www/volcanic_deploy/shared/themes/staging" do
  mode 0755
  owner 'deploy'
  group 'www-data'
  recursive true
  action :create
end

directory "/srv/www/volcanic_deploy/shared/themes/production" do
  mode 0755
  owner 'deploy'
  group 'www-data'
  recursive true
  action :create
end

# PRECOMPILE ASSETS STASH
directory "/srv/www/precompile_app/shared/sync/precompiled_assets/staging" do
  mode 0755
  owner 'deploy'
  group 'www-data'
  recursive true
  action :create
end

directory "/srv/www/precompile_app/shared/sync/precompiled_assets/production" do
  mode 0755
  owner 'deploy'
  group 'www-data'
  recursive true
  action :create
end

# THEMES STASH
directory "/srv/www/precompile_app/shared/sync/themes/staging" do
  mode 0755
  owner 'deploy'
  group 'www-data'
  recursive true
  action :create
end

directory "/srv/www/precompile_app/shared/sync/themes/production" do
  mode 0755
  owner 'deploy'
  group 'www-data'
  recursive true
  action :create
end

# LOGS
directory "/srv/www/volcanic_deploy/shared/system/logs/staging" do
  mode 0755
  owner 'deploy'
  group 'www-data'
  recursive true
  action :create
end

directory "/srv/www/volcanic_deploy/shared/system/logs/production" do
  mode 0755
  owner 'deploy'
  group 'www-data'
  recursive true
  action :create
end
