
default['ruby-ng']['ruby_version'] = "2.4"
default['nodejs']['version'] = "9.7.1"
default['nodejs']['npm']['version'] = "5.6.0"
default['nginx']['default_site_enabled'] = false

default[:eventide][:git_repository] = "https://github.com/ntuzer/eventide/"
default[:eventide][:git_revision] = "master"
default[:eventide][:path] = "/opt/eventide"

default[:eventide][:rails_env] = "production"
default[:eventide][:log_to_stdout] = "true"

default[:eventide][:environment] = {
  "SECRET_KEY_BASE": node[:eventide][:secret_key_base],
  "DATABASE_URL": node[:eventide][:database_url],
  "RAILS_ENV": node[:eventide][:rails_env],
  "RAILS_LOG_TO_STDOUT": node[:eventide][:log_to_stdout]
}

default[:eventide][:start_cmd] = "unicorn -E production -c /opt/unicorn.rb"
