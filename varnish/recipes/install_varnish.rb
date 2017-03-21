include_recipe 'apt'


package 'varnish' do
  # package_name 'varnish-4.1'
  version '4.1'
  action :install
end
