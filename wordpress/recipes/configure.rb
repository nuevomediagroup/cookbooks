execute "ensure correct user for /srv/www/#{node[:scalarium][:applications].keys.first[:slug_name]}/current/wp-content" do
  command "chown -R #{node[:vsftpd2][:user]}:www-data /srv/www/#{node[:scalarium][:applications].keys.first[:slug_name]}/current/wp-content"
  action :run
end

execute "ensure correct user for /srv/www/#{node[:scalarium][:applications].keys.first[:slug_name]}/current/tmp" do
  command "chown -R #{node[:vsftpd2][:user]}:www-data /srv/www/#{node[:scalarium][:applications].keys.first[:slug_name]}/current/tmp"
  action :run
end

execute "ensure correct access rights for /srv/www/#{node[:scalarium][:applications].keys.first[:slug_name]}/current/wp-content" do
  command "chmod -R g+rw /srv/www/#{node[:scalarium][:applications].keys.first[:slug_name]}/current/wp-content"
  action :run
end

execute "ensure correct access rights for /srv/www/#{node[:scalarium][:applications].keys.first[:slug_name]}/current/tmp" do
  command "chmod -R g+rw /srv/www/#{node[:scalarium][:applications].keys.first[:slug_name]}/current/tmp"
  action :run
end