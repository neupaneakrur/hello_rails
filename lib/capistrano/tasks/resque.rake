namespace :resque do
  desc "Stop Resque workers"
  task :stop do
    on roles(:app) do
      execute :systemctl, "--user stop resque"
    end
  end

  desc "Start Resque workers"
  task :start do
    on roles(:app) do
      execute :systemctl, "--user start resque"
    end
  end

  desc "Restart Resque workers"
  task :restart do
    on roles(:app) do
      execute :systemctl, "--user restart resque"
    end
  end
end
