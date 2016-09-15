include_recipe 'nginx'

users = node['kafka-topics-ui']['htpasswd']['users']

if users.nil?
  file node['kafka-topics-ui']['htpasswd']['path'] do
    action :delete
  end
else
  users.each_pair do |name, opts|
    htpasswd node['kafka-topics-ui']['htpasswd']['path'] do
      user name
      password opts
    end
  end
end

template ::File.join(node['nginx']['dir'], 'sites-available', 'kafka-topics-ui') do
  source 'kafka-topics-ui.conf.erb'
  notifies :reload, 'service[nginx]'
  variables(:use_auth_basic => users || false)
end

nginx_site 'kafka-topics-ui'
