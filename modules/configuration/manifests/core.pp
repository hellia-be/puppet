class configuration::core {
  file { 'vimrc':
    ensure => present,
    path => '/home/hellia/.vimrc',
    owner => 'hellia',
    group => 'hellia',
    mode => '0644',
    source => 'https://raw.githubusercontent.com/hellia-be/dotfiles/master/vim/vimrc',
    require => Package['vim'],
  }
  file { '/etc/pacman.conf':
    ensure => present,
    owner => 'root',
    group => 'root',
    mode => '0644',
    source => 'https://raw.githubusercontent.com/hellia-be/dotfiles/master/pacman/pacman.conf',
  }
  file { '/etc/X11/xorg.conf.d/10-display.conf':
    ensure => file,
    group  => 'root',
    owner  => 'root',
    mode   => '0644',
    source => 'https://raw.githubusercontent.com/hellia-be/dotfiles/main/xorg/10-display.conf',
  }
}
