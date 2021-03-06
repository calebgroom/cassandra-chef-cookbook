name             "cassandra"
maintainer       "Michael S. Klishin"
maintainer_email "michael@defprotocol.org"
license          "Apache 2.0"
description      "Installs/Configures OpsCode Apache Cassandra"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "1.1.0"

%w{ debian ubuntu }.each do |os|
  supports os
end

%w{ apt firewall }.each do |cb|
  depends cb
end
