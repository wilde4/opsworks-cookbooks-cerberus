directory "/srv/www/oliver/shared/themes/remote_development" do
  mode 0755
  owner 'deploy'
  group 'www-data'
  recursive true
  action :create
end

execute "mount cloud9 to themes" do
  command "sudo mount 10.0.1.200:/cloud9/cloud9 /srv/www/oliver/shared/themes/remote_development"
  user "root"
end