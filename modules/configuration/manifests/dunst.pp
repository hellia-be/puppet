class configuration::dunst {
  file { '/home/hellia/.config':
    ensure => directory,
    owner => 'hellia',
    group => 'hellia',
    mode => '0700',
  }
  file { '/home/hellia/.config/dunst':
    ensure => directory,
    owner => 'hellia',
    group => 'hellia',
    mode => '0644',
    require => File['/home/hellia/.config'],
  }
}
