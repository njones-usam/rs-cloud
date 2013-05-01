name             'x_server'
maintainer       'usam'
maintainer_email 'njones-usam@'
license          'All rights reserved'
description      'Installs/Configures x_server'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends "rightscale"
depends "db_mysql"

recipe "x_server::add_email_v1","Adding a new user to the database"

# Required Input #
attribute "x_server/email_address",
   :display_name => "Email Address",
   :description => "The email address of the user you would like to add.",
   :required => "required",
   :recipes => ["x_server::add_email_v1"]

# Recommended Input #
attribute "x_server/full_name",
   :display_name => "Full Name",
   :description => "The first and last name of the user.",
   :required => "required",
   :recipes => ["x_server::add_email_v1"] 
