name             'my-first-cookbook'
maintainer       'usam'
maintainer_email 'njones-usam@'
license          'All rights reserved'
description      'Installs/Configures my-first-cookbook'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends "rightscale"

recipe "my-first-cookbook::helloworld", "My first recipe, prints Hello World to the RightScale dashboard"
