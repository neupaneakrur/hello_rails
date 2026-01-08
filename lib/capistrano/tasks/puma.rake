namespace :puma do
  desc "Restart Puma via systemd"
  task :restart do
    on roles(:app) do
      execute :sudo, :systemctl, :restart, :puma_hello_rails
    end
  end
end

after "deploy:published", "puma:restart"

