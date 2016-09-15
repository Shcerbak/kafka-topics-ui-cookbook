version = node['kafka-topics-ui']['version']
path = node['kafka-topics-ui']['path']

template "#{path}/kafka-topics-ui-#{version}/src/env.js" do
  source 'env.js.erb'
  owner 'root'
  group 'root'
  mode '0644'

  notifies :restart, 'service[nginx]', :delayed
end

execute 'npm_install_bower' do
  command 'npm install -g bower'
  cwd "#{path}/kafka-topics-ui/"
  action :run

  not_if { File.directory?("#{path}/kafka-topics-ui/bower_components") }
end

execute 'bower_install' do
  command 'bower install --allow-root'
  cwd "#{path}/kafka-topics-ui/"
  action :run

  not_if { File.directory?("#{path}/kafka-topics-ui-#{version}/bower_components") }
end
