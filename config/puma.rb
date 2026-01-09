app_dir = "/home/ubuntu/hello_rails/current"

directory app_dir
environment "production"

pidfile "#{app_dir}/tmp/pids/puma.pid"
state_path "#{app_dir}/tmp/pids/puma.state"

stdout_redirect "#{app_dir}/log/puma.stdout.log",
                "#{app_dir}/log/puma.stderr.log",
                true

threads 2, 5
workers 2

bind "tcp://0.0.0.0:3000"

preload_app!

on_worker_boot do
  ActiveRecord::Base.establish_connection if defined?(ActiveRecord)
end
