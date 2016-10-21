template '/srv/www/precompile_app/shared/precompile.sh' do
  source "precompile.sh.erb"
  owner "deploy"
  mode 0755
end