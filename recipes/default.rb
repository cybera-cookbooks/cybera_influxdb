# install remote influxdb package
remote_file node[:influxdb][:package][:local_path] do
  source node[:influxdb][:package][:url]
  action :create
end

dpkg_package "influxdb" do
  source node[:influxdb][:package][:local_path]
  action :install
end

service "influxdb" do
  supports :status => true, :restart => true, :start => true, :stop => true
  action :enable
end

directory node[:influxdb][:config][:data][:path] do
  recursive true
  owner "influxdb"
  group "influxdb"
  mode "0775"
  action :create
end

# deploy config
template "/opt/influxdb/shared/config.toml" do
  source "influxdb.conf.erb"
  variables({
    :config => node[:influxdb][:config]
  })
  action :create
  notifies :restart, "service[influxdb]", :delayed
end

# start influxdb
service "influxdb" do
  action :start
end

