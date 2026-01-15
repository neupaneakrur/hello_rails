source "https://rubygems.org"

ruby "3.2.2"

# ----------------------------
# Rails core
# ----------------------------
gem "rails", "~> 8.1.2"
gem "propshaft"
gem "sqlite3", ">= 2.1"
gem "puma", ">= 5.0"

gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"

gem "tzinfo-data", platforms: %i[ windows jruby ]

# ----------------------------
# Rails 8 built-ins
# ----------------------------
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

gem "bootsnap", require: false

# Optional deploy helpers
gem "kamal", require: false
gem "thruster", require: false

gem "image_processing", "~> 1.2"

# ----------------------------
# Background jobs
# ----------------------------
gem "sidekiq", "~> 8.1"

# ----------------------------
# Development & Test
# ----------------------------
group :development, :test do
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"
  gem "bundler-audit", require: false
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
end

group :development do
  gem "web-console"

  # 🔑 Capistrano stack (ONLY HERE)
  gem "capistrano", "~> 3.20"
  gem "capistrano-rails", "~> 1.7"
  gem "capistrano-bundler", "~> 2.2"
  gem "capistrano-sidekiq", "~> 3.2"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
