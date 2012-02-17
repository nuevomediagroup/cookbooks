package "vsftpd"

template "/etc/vsftpd.conf" do
  source "vsftpd.conf.erb"
  mode "0660"
end

user "#{node[:vsftpd2][:user]}" do
  comment "FTP user"
  gid "users"
  home "/home/nuestratv"
  shell "/bin/zsh"
  password node[:vsftpd2][:pwd_hash]
end

execute "restart vsftpd" do
  command "service vsftpd restart"
end
