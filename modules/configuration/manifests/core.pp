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
  file { '/home/hellia/.bashrc':
    ensure => present,
    owner  => 'hellia',
    group  => 'hellia',
    mode   => '0644',
    source => 'https://raw.githubusercontent.com/hellia-be/dotfiles/main/bash/bashrc',
  }
  file { '/home/hellia/.inputrc':
    ensure => present,
    owner  => 'hellia',
    group  => 'hellia',
    mode   => '0644',
    source => 'https://raw.githubusercontent.com/hellia-be/dotfiles/main/bash/inputrc',
  }
}
