# Description

This cookbook installs Kafka-Topics-UI in very basic manner.

# Usage

Modify `default['kafka-topics-ui']['version']` and `default['kafka-topics-ui']['checksum']` to change Kafka-Topics-UI version.
Modify `default['kafka-topics-ui']['kafka_rest_ip']` with kafka rest IP
Modify `default['kafka-topics-ui']['schema_registry_ui_ip']` with schema registry ui ip
Modify `default['kafka-topics-ui']['schema_registry_ip']` with schema registry ip

Add `default['kafka-topics-ui']['htpasswd']['users'][user_name] = password` if you want to add basic authentication



# Requirements

## Platform:

* debian

## Cookbooks:

* nginx
* htpasswd
* nodejs

# Attributes

* `node['kafka-topics-ui']['packages']` -  Defaults to `%w(unzip git)`.
* `node['kafka-topics-ui']['version']` -  Defaults to `0.2`.
* `node['kafka-topics-ui']['checksum']` -  Defaults to `9ce2db00683174ee2a84317228a1c1ea278293285a59173d7506764607bcb933`.
* `node['kafka-topics-ui']['server_ip']` -  Defaults to `node['ipaddress']`.
* `node['kafka-topics-ui']['htpasswd']['path']` -  Defaults to `/etc/nginx/.htpasswd_kafka-topics-ui`.
* `node['kafka-topics-ui']['path']` -  Defaults to `/opt`.
* `node['kafka-topics-ui']['kafka_rest_ip']` -  Defaults to `localhost`.
* `node['kafka-topics-ui']['schema_registry_ui_ip']` -  Defaults to `localhost`.
* `node['kafka-topics-ui']['schema_registry_ip']` -  Defaults to `localhost`.

# Recipes

* kafka-topics-ui::configure
* kafka-topics-ui::default
* kafka-topics-ui::install
* kafka-topics-ui::nginx
* kafka-topics-ui::packages

# License and Maintainer

Maintainer:: Shcerbak (<shcerbak@gmail.com>)
Source:: https://github.com/shcerbak/kafka-topics-ui-cookbook
Issues:: https://github.com/shcerbak/kafka-topics-ui-cookbook/issues

License:: apache 2
