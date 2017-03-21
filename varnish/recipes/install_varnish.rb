execute "add_varnish_repo_key" do
  command "curl https://repo.varnish-cache.org/GPG-key.txt | sudo apt-key add -"
  user "root"
end

execute "add_varnish_repo" do
  command 'echo "deb https://repo.varnish-cache.org/ubuntu/ trusty varnish-4.1" | sudo tee -a /etc/apt/sources.list.d/varnish-cache.list'
  user "root"
end

include_recipe 'apt'

package 'varnish' do
  # package_name 'varnish-4.1'
  version '4.1'
  action :install
end
