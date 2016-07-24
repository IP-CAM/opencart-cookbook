name             'opencart'
maintainer       'Manoel Carvalho'
maintainer_email 'manoelhc@gmail.com'
license          'MIT'
description      'Installs/Configures opencart'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'
issues_url        'https://github.com/manoelhc/opencart-cookbook/issues'
source_url       'https://github.com/manoelhc/opencart-cookbook'

depends 'tar'
depends 'git'
depends 'mysql'
depends 'composer'
depends 'php'
depends 'apache2'

%w[ centos redhat fedora debian ubuntu ].each do |os|
  supports os
end

attribute "opencart/git_url",
  :display_name          => "OpenCart Git repository URL",
  :description           => "The URL of OpenCart repository to be installed",
  :default               => "https://github.com/opencart/opencart.git"

attribute "opencart/revision",
  :display_name          => "OpenCart version",
  :description           => "The version number to be installed",
  :default               => "latest"

attribute "opencart/url_path",
  :display_name          => "OpenCart URL path",
  :description           => "This is the path used after domain:port in URL. Ex.: http://local:port${url_path}",
  :default               => "/"

attribute "opencart/home_dir",
  :display_name          => "OpenCart home directory",
  :description           => "The directory of OpenCart installation",
  :default               => "/usr/local/opencart"

attribute "opencart/http_port",
  :display_name          => "OpenCart port for HTTP",
  :description           => "The port number for HTTP connections",
  :default               => "58080"

attribute "opencart/webmaster_email",
  :display_name          => "Admin email",
  :description           => "Admin email",
  :default               => ""


attribute "opencart/rdbms/name",
  :display_name          => "RDBMS Name DB module (mysql, postgres)",
  :description           => "The name of the RDBMS Server",
  :default               => "mysqli"

attribute "opencart/rdbms/hostname",
  :display_name          => "RDBMS Hostname",
  :description           => "The hostname of the RDBMS Server",
  :default               => "localhost"

attribute "opencart/rdbms/port",
  :display_name          => "RDBMS Port",
  :description           => "The port number of the RDBMS Server",
  :default               => "3306"

attribute "opencart/rdbms/username",
  :display_name          => "RDBMS Username",
  :description           => "The user of the RDBMS Server which will be used by OpenCart",
  :default               => "opencart"

attribute "opencart/rdbms/password",
  :display_name          => "RDBMS Password",
  :description           => "The password for the provided RDBMS Server username",
  :default               => "opercart"

attribute "opencart/rdbms/dbname",
  :display_name          => "Database name",
  :description           => "The name of the database which will be used by OpenCart",
  :default               => "opencart"

attribute "opencart/rdbms/table_prefix",
  :display_name          => "Table prefix",
  :description           => "This prefix will be prepended to the table's name",
  :default               => ""

attribute "opencart/admin/username",
  :display_name          => "Admin username",
  :description           => "Admin username",
  :default               => "admin"

attribute "opencart/admin/password",
  :display_name          => "Admin password",
  :description           => "Admin password",
  :default               => "admin"

attribute "opencart/apache/confdir",
  :display_name          => "Apache's error log",
  :description           => "Where do you want to redirect the Apache error logs for OpenCart. Keep it empty for auto discovery.",
  :default               => ""

attribute "opencart/apache/logs/error",
  :display_name          => "Apache's error log",
  :description           => "Where do you want to redirect the Apache error logs for OpenCart",
  :default               => "/var/log/opencart/error.log"

attribute "opencart/apache/logs/info",
  :display_name          => "Apache's info log",
  :description           => "Where do you want to redirect the Apache info logs for OpenCart",
  :default               => "/var/log/opencart/info"
