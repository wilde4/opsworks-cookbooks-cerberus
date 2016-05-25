node[:deploy].each do |app_name, deploy_config|
  # determine root folder of new app deployment
  app_root = "#{deploy_config[:deploy_to]}/current"
  app_env = "#{deploy_config[:rails_env]}"

  # Enumerate the workers, find target PIDs
  pids = {}
  Resque.workers.each do |worker|
    pids[worker.id] = worker.id.split(':')[1]
  end

  if pids.empty?
    puts "No workers to kill"
  else
    syscmd = "kill -QUIT #{pids.map{ |worker_id, worker_pid| worker_pid if Resque::Worker.exists?(worker_id) }.compact.join(' ')}"
    puts "Running syscmd: #{syscmd}"

    execute "kill -QUIT resque_worker_pids" do
      command syscmd
      cwd     app_root
    end

  end
end