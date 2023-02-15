# This class is specifically used for nvidia
#
class software::nvidia (
  $kernel = 'zen'
) {
  require software::kernel

  package { 'nvidia-open-dkms':
    ensure => latest,
  }

  file { '/etc/modprobe.d/nvidia.conf':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => 'puppet:///modules/software/nvidia.conf',
    require => Package['nvidia-open-dkms'],
  }

  file { '/etc/pacman.d/hooks':
    ensure  => directory,
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    content => template('software/nvidia-hook.erb'),
  }
}
