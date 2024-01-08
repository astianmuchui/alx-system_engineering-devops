# Install and configure nginx but using puppet

# Ensure that nginx server is installed

package { 'nginx':
  ensure => 'installed',
}

# Edit the index.html file
file { '/var/www/html/index.html':
  ensure  => file,
  content => 'Hello World!',
}

file_line { 'redirection-301':
  ensure  => present,
  path    => '/etc/nginx/sites-available/default',
  after   => 'listen 80 default_server;',
  line    => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
}

service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}

