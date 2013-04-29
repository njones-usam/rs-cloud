rightscale_marker :begin

  full_name = node[:x_server][:full_name]
  email_addres = node[:x_server][:email_address]

  mysql_connection_info = {:host => node[:db][:dns][:master][:fqdn],
                         :username => node[:db][:admin][:user],
                         :password => node[:db][:admin][:password] }
  
  log "Adding the email address #{email_address} and name #{full_name} to the Database."
  
rightscale_marker :end
