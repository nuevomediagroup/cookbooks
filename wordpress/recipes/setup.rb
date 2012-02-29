directory "/vol/data/www" do
  owner node[:vsftpd2][:user]
  mode "0755"
  action :create
end

execute "move srv/www to nfs share" do
  command "umount /srv/www/ && rm -rf /srv/www/ && ln -s /vol/data/www /srv/"
end

user "#{node[:vsftpd2][:user]}" do
  comment "FTP user"
  gid "users"
  supports :manage_home => true
  home "/srv/www/#{node[:scalarium][:applications].keys.first[:slug_name]}/current/"
  shell "/bin/zsh"
  password node[:vsftpd2][:pwd_hash]
end