default['kafka-topics-ui']['packages'] = %w(unzip git)
default['kafka-topics-ui']['version'] = '0.2'
default['kafka-topics-ui']['checksum'] = '9ce2db00683174ee2a84317228a1c1ea278293285a59173d7506764607bcb933'
default['kafka-topics-ui']['server_ip'] = node['ipaddress']
default['kafka-topics-ui']['htpasswd']['path'] = '/etc/nginx/.htpasswd_kafka-topics-ui'
default['kafka-topics-ui']['path'] = '/opt'

default['kafka-topics-ui']['kafka_rest_ip'] = 'localhost'
default['kafka-topics-ui']['schema_registry_ui_ip'] = 'localhost'
default['kafka-topics-ui']['schema_registry_ip'] = 'localhost'
