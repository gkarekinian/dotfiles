current_dir = File.dirname(__FILE__)
user = ENV['OPSCODE_USER'] || ENV['USER']

log_level                :info
log_location             STDOUT
node_name                user
client_key               "#{current_dir}/#{ENV['ORGNAME']}-#{user}.pem"
validation_client_name   "#{ENV['ORGNAME']}-validator"
validation_key           "#{current_dir}/#{ENV['ORGNAME']}-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/#{ENV['ORGNAME']}"
cache_type               'BasicFile'
cache_options            :path => "#{ENV['HOME']}/.chef/checksums"
cookbook_path            ["#{current_dir}/../cookbooks", "#{current_dir}/../site-cookbooks"]

