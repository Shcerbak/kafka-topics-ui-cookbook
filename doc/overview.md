This cookbook installs Kafka-Topics-UI in very basic manner.

# Usage

Modify `default['kafka-topics-ui']['version']` and `default['kafka-topics-ui']['checksum']` to change Kafka-Topics-UI version.
Modify `default['kafka-topics-ui']['kafka_rest_ip']` with kafka rest IP
Modify `default['kafka-topics-ui']['schema_registry_ui_ip']` with schema registry ui ip
Modify `default['kafka-topics-ui']['schema_registry_ip']` with schema registry ip

Add `default['kafka-topics-ui']['htpasswd']['users'][user_name] = password` if you want to add basic authentication


