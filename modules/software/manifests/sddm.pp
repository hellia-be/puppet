#
class software::sddm (
  $username = 'hellia'
) {
  file { '/etc/sddm.conf.d':
    ensure => directory,
  }

  file { '/etc/sddm.conf.d/autologin.conf':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('software/autologin.erb'),
    require => File['/etc/sddm.conf.d'],
  }
}
