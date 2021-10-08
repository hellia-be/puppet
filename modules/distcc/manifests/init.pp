class distcc {
  package { 'distcc':
    ensure => installed,
  }
  file { '/etc/conf.d/distccd':
    ensure  => present,
    source  => 'https://raw.githubusercontent.com/hellia-be/dotfiles/main/distcc/distccd',
    require => Package['distcc'],
  }
  file { '/usr/bin/distcc':
    ensure  => link,
    target  => '/usr/lib/distcc/aarch64-unknown-linux-gnu-gcc',
    require => Package['distcc'],
  }
  file { '/etc/systemd/system/distccd8.service':
    ensure  => present,
    source  => 'https://raw.githubusercontent.com/hellia-be/dotfiles/main/distcc/distccd8.service',
    require => Package['distcc'],
    notify  => Service['distccd8'],
  }
  service { 'distccd8':
    ensure  => running,
    enable  => true,
    require => File['/etc/systemd/system/distccd8.service'],
  }
  exec { 'crosstool-ng':
    command => "wget https://archlinuxarm.org/builder/xtools/x-tools8.tar.xz && tar xvf x-tools8.tar.xz",
    creates => '/home/hellia/Documents/x-tools8/aarch64-unknown-linux-gnu/bin/aarch64-unknown-linux-gnu-gcc',
    cwd     => '/home/hellia/Documents',
    user    => 'hellia',
  }
}
