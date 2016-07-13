directory "/srv/www/oliver/shared/themes" do
  mode 0755
  owner 'deploy'
  group 'www-data'
  recursive true
  action :create
end

execute "mount cloud9 to themes" do
  command "sudo mount 10.0.1.200:/cloud9/cloud9 /srv/www/oliver/shared/themes"
  user "root"
  not_if do ::File.exists?('/srv/www/oliver/shared/themes/eventbeat/layout/theme.liquid') end
end