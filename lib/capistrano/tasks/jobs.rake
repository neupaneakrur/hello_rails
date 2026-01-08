namespace :jobs do
  desc "Pause background jobs"
  task :pause do
    on roles(:app) do
      invoke "sidekiq:quiet"
      invoke "resque:stop"
    end
  end

  desc "Resume background jobs"
  task :resume do
    on roles(:app) do
      invoke "sidekiq:start"
      invoke "resque:start"
    end
  end
end
