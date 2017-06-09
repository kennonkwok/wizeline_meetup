package { 'redis-server':
  ensure => 'latest'
}

service { 'redis':
  ensure => 'running'
}