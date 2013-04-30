rightscale_marker :begin

  include Chef::Recipe::RightScale::Database::MySQL::Helper

  log "Starting to add the email address"

  full_name = node[:x_server][:full_name]
  email_address = node[:x_server][:email_address]

 do_query(node, "INSERT INTO USERS (CREATED_DATE, USER_EMAIL, EMAIL_LOWERCASE, FULL_NAME, lastUpdateOn, TYPE, VERSION) VALUES (NOW(), '#{email_address}', '#{email_address.downcase}', '#{full_name}', NOW(), 0, 0)")
  
  log "Added the email address #{email_address} and name #{full_name} to the Database."

rightscale_marker :end
