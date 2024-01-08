# Install Nginx on server
package { 'nginx':
  ensure => installed,
}


file_line { 'add custom header':
  ensure => present,
  path   => '/etc/nginx/sites-available/default',
  line   => "\tadd_header X-Served-By ${hostname};",
  after  => 'server_name _;',
}


service { 'nginx':
  ensure => running,
  require => Package[ 'nginx' ]
}
