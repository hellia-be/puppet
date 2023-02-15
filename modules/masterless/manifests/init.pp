# This class is used to run puppet without any master server
#
class masterless () {
  file { 'post-hook':
    ensure => file,
    path   => '/etc/puppet/.git/hooks/post-merge',
    source => 'puppet:///modules/masterless/post-merge',
    mode   => '0755',
    owner  => 'root',
    group  => 'root',
  }

  package { 'cronie':
    ensure => latest,
  }

  cron { 'puppet-apply':
    ensure  => present,
    command => 'cd /etc/puppet && /usr/bin/git pull',
    user    => 'root',
    minute  => '*/30',
    require => [File['post-hook'],Package['cronie'],],
  }
}
