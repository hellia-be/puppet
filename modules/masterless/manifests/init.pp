class masterless {
  file { 'post-hook':
    ensure => 'file',
    path => '/etc/puppet/.git/hooks/post-merge',
    source => 'https://raw.githubusercontent.com/hellia-be/scripts/master/puppet/post-merge',
    mode => '0755',
    owner => 'root',
    group => 'root',
  }
}
