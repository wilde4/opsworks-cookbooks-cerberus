template "/etc/varnish/backends.vcl" do
  mode '0755'
  owner deploy[:user]
  group deploy[:group]
  source "backends.vcl.erb"
  # variables(:deploy => deploy, :application => application)
end

template "/etc/varnish/custom.vcl" do
  mode '0755'
  owner deploy[:user]
  group deploy[:group]
  source "custom.vcl.erb"
  # variables(:deploy => deploy, :application => application)
end

template "/etc/varnish/default.vcl" do
  mode '0755'
  owner deploy[:user]
  group deploy[:group]
  source "default.vcl.erb"
  # variables(:deploy => deploy, :application => application)
end