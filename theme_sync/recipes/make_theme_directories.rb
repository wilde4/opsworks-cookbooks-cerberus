# PRODUCTION
directory "#{ENV['HOME']}/shared/sync/precompiled_assets/production" do
  mode 0755
  owner 'deploy'
  group 'www-data'
  recursive true
  action :create
end

directory "#{ENV['HOME']}/shared/sync/themes/production" do
  mode 0755
  owner 'deploy'
  group 'www-data'
  recursive true
  action :create
end

# STAGING
directory "#{ENV['HOME']}/shared/sync/precompiled_assets/staging" do
  mode 0755
  owner 'deploy'
  group 'www-data'
  recursive true
  action :create
end

directory "#{ENV['HOME']}/shared/sync/themes/staging" do
  mode 0755
  owner 'deploy'
  group 'www-data'
  recursive true
  action :create
end