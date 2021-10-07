class configuration::dmenu {
  file { '/home/hellia/.local':
    ensure => directory,
    owner => 'hellia',
    group => 'hellia',
    mode => '0700',
  }
  file { '/home/hellia/.local/bin':
    ensure => directory,
    owner => 'hellia',
    group => 'hellia',
    mode => '0700',
    require => File['/home/hellia/.local'],
  }
  file { 'dmenu-options':
    ensure => present,
    path => '/home/hellia/.local/bin/dmenu.sh',
    owner => 'hellia',
    group => 'hellia',
    mode => '0777',
    source => 'https://raw.githubusercontent.com/hellia-be/scripts/master/dmenu/dmenu.sh',
    require => File['/home/hellia/.local/bin'],
  }
  file { 'dmenu_recency':
    ensure => present,
    path => '/home/hellia/.local/bin/dmenu-recency.sh',
    owner => 'hellia',
    group => 'hellia',
    mode => '0777',
    source => 'https://raw.githubusercontent.com/hellia-be/scripts/master/dmenu/dmenu-recency.sh',
    require => File['/home/hellia/.local/bin'],
  }
  file { 'dmenu-lpass':
    ensure => present,
    path => '/home/hellia/.local/bin/dmenu-lpass.sh',
    owner => 'hellia',
    group => 'hellia',
    mode => '0777',
    source => 'https://raw.githubusercontent.com/hellia-be/scripts/master/dmenu/dmenu-lpass',
    require => File['/home/hellia/.local/bin'],
  }
}
