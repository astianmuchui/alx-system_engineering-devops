# Install flask v 2.1.0 via pip3
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}