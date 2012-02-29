include_attribute "vsftpd"

directory "/vol/data/www" do
  owner node[:vsftpd2][:user]
  group node[:vsftpd2][:user]
  mode "0755"
  action :create
end

execute "move srv/www to nfs share" do
  command "umount /srv/www/ && rm -rf /srv/www/ && ln -s /vol/data/www /srv/"
end