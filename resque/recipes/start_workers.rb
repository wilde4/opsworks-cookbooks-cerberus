# Adapted from rails::configure: https://github.com/aws/opsworks-cookbooks/blob/master/rails/recipes/configure.rb

node[:deploy].each do |app_name, deploy_config|
  # determine root folder of new app deployment
  app_root = "#{deploy_config[:deploy_to]}/current"
  app_env = "#{deploy_config[:rails_env]}"

  worker_count = deploy_config[:resque][:workers]

  puts "Loading #{worker_count} workers"

  worker_count.to_i.times do
    execute "rake resque:work" do
      command       "bundle exec rake environment resque:work"
      cwd           app_root
      environment({
        'RAILS_ENV'  => app_env,
        'TERM_CHILD' => "1"
      })
    end
  end
end