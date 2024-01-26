# Will increase the user limit to 4096

exec { 'fixnginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/usr/local/bin/:/bin',
}

# Restart the server

exec { 'nginx_restart':
  command => 'nginx restart',
  path    => '/etc/init.d/'
}
