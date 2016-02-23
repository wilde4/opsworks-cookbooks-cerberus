execute "mount cloud9 to themes" do
  command "sudo mount 10.0.1.200:/cloud9/cloud9 /srv/www/oliver/shared/themes"
  user "root"
end