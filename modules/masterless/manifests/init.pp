class masterless {
  file { 'post-hook':
    ensure => 'file',
    path => '/etc/puppet/.git/hooks/post-merge',
    source => 'https://raw.githubusercontent.com/hellia-be/scripts/master/puppet/post-merge',
    mode => '0755',
    owner => 'root',
    group => 'root',
  }
  cron { 'puppet-apply':
    ensure => 'present',
    command => 'cd /etc/puppet && /usr/bin/git pull',
    user => 'root',
    minute => '*/30',
    require => File['post-hook'],
  }
}
