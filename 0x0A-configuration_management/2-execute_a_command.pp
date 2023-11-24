# creates a manifest that kills a process called 'killmenow'
# uses exec resource with pkill command

exec { 'killmenow':
  command => 'pkill killmenow',
  path    => '/usr/bin/'
}
