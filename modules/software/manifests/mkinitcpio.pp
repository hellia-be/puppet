#
class software::mkinitcpio () {
  require software::nvidia

  file { '/etc/mkinitcpio.conf':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/software/mkinitcpio.conf',
  }

  exec { 'mkinitcpio':
    command   => '/usr/bin/mkinitcpio --config /etc/mkinitcpio.conf --generate /boot/initramfs-custom.img',
    subscribe => File['/etc/mkinitcpio.conf'],
  }
}
