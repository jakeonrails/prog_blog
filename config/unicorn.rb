# Minimal Heroku unicorn config
# Heroku has a 30s timeout so we do 60s so we're not double-killing
# Depending on memory usage workers can be bumped to 3-4
# preload_app=true can cause issues if you don't reconnect things correctly

worker_processes             Integer(ENV['UNICORN_WORKERS'] || 2)
timeout                      Integer(ENV['UNICORN_TIMEOUT'] || 25)
listen ENV['PORT'], backlog: Integer(ENV['UNICORN_BACKLOG'] || 200)

preload_app true

before_fork do |server, worker|
 Signal.trap 'TERM' do
   puts 'Unicorn master intercepting TERM and sending myself QUIT instead'
   Process.kill 'QUIT', Process.pid
 end
 defined?(ActiveRecord::Base) and ActiveRecord::Base.connection.disconnect!
end


after_fork do |server, worker|
 Signal.trap 'TERM' do
   puts 'Unicorn worker intercepting TERM and doing nothing. Wait for master to send QUIT'
 end
 defined?(ActiveRecord::Base) and ActiveRecord::Base.establish_connection
end
