default[:influxdb][:package][:url] = "http://s3.amazonaws.com/influxdb/influxdb_latest_amd64.deb"
#default[:influxdb][:package][:url] = "http://get.influxdb.org/influxdb_0.9.0-rc12_amd64.deb"
default[:influxdb][:package][:local_path] = "/tmp/influxdb.deb"

default[:influxdb][:config][:admin][:enabled] = false
default[:influxdb][:config][:admin][:port] = 8083
default[:influxdb][:config][:authentication][:enabled] = false

default[:influxdb][:config][:api][:port] = 8086
default[:influxdb][:config][:api][:ssl][:enabled] = false
default[:influxdb][:config][:api][:ssl][:port] = 8087
default[:influxdb][:config][:api][:ssl][:cert_path] = "/etc/ssl/mycert/mycert.pem"

default[:influxdb][:config][:graphite][:enabled] = false
default[:influxdb][:config][:graphite][:port] = 2003
default[:influxdb][:config][:collectd][:enabled] = false
default[:influxdb][:config][:collectd][:port] = 25826
default[:influxdb][:config][:udp][:enabled] = true
default[:influxdb][:config][:udp][:port] = 4444

default[:influxdb][:config][:data][:path] = "/influxdb/data/"
default[:influxdb][:config][:data][:port] = 8086
