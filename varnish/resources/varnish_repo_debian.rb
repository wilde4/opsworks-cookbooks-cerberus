provides :varnish_repo, platform_family: 'debian'

# default_action :configure

apt_repository 'varnish-cache_4.1' do
  uri "http://repo.varnish-cache.org/#{node['platform']}"
  distribution node['lsb']['codename']
  components ['varnish-4.1']
  key "https://repo.varnish-cache.org/#{node['platform']}/GPG-key.txt"
  deb_src true
  action :add
end
