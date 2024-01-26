# High number of files opened: Problem fix

exec {'replace_file':
  provider => shell,
  command  => 'sudo sed -i "s/nofile 5/nofile 50000/" /etc/security/limits.conf',
  path     => ['/bin', '/usr/bin'],
  before   => Exec['replace_file-2'],
  onlyif   => 'test -e /etc/security/limits.conf',
}

# File replacement
exec {'replace_file-2':
  provider => shell,
  command  => 'sudo sed -i "s/nofile 4/nofile 40000/" /etc/security/limits.conf',
  onlyif   => 'test -e /etc/security/limits.conf',
  require  => Exec['replace_file_1'],
}
