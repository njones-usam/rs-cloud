rightscale_marker :begin

  log "Adding the email address #{email_address} and name #{full_name} to the Database."

  full_name = node[:x_server][:full_name]
  email_addres = node[:x_server][:email_address]

  RightScale::Database::MySQL::Helper.do_query(node, "INSERT INTO USERS (CREATED_DATE, USER_EMAIL, EMAIL_LOWERCASE, FULL_NAME, lastUpdateOn, TYPE, VERSION) VALUES (NOW(), '#{email_address}', '#{email_address.downcase}', '#{full_name}', NOW(), 0, 0)")
  
rightscale_marker :end
