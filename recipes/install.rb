kt_zip = ::File.join(Chef::Config[:file_cache_path], 'kafka-topics-ui.zip')
version = node['kafka-topics-ui']['version']
path = node['kafka-topics-ui']['path']

remote_file kt_zip do
  owner 'root'
  group 'root'
  mode '0644'
  source "https://github.com/Landoop/kafka-topics-ui/archive/v#{version}.zip"
  checksum node['kafka-topics-ui']['checksum']

  notifies :run, 'execute[unzip]', :immediately
end

execute 'unzip' do
  command "unzip #{kt_zip} -d #{path}"

  not_if { File.exist?("#{path}/kafka-topics-ui-#{version}/src/env.js") }
end

link "#{path}/kafka-topics-ui" do
  to "#{path}/kafka-topics-ui-#{version}"
end
