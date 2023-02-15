#
class software::systemdboot(
  $uuid = '6b017bf2-dcdd-4d03-b744-3a2ece479fa0',
) {
  require software::nvidia

  file { '/boot/loader/entries/linux-zen.conf':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    content => template('software/linux-zen.erb'),
  }

  file { '/boot/loader/entries/linux-lts.conf':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
    source => template(software/linux-lts.erb),
  }
}
