# Check why apache returns a 500 error and fix it
file { '/var/www/html/wp-settings.php':
  ensure => present,
  owner  => 'www-data',
  group  => 'www-data',
  mode   => '0644',
}
