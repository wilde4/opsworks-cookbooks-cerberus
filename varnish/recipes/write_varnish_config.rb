template "/etc/varnish/backends.vcl" do
  mode '0755'
  owner deploy[:user]
  group deploy[:group]
  source "backends.vcl.erb"
  # variables(:deploy => deploy, :application => application)
end