# Capfile

require 'capistrano/setup'
require 'capistrano/deploy'

# IMPORTANT: load rbenv EARLY
# require 'capistrano/rbenv'
require 'capistrano/bundler'

# Load custom tasks
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
