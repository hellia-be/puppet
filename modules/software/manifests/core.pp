class software::core {
  package { 'cronie':
    ensure => installed,
  }
  package { 'firefox':
    ensure => installed,
  }
  package { 'linux':
    ensure => installed,
  }
  package { 'linux-headers':
    ensure => installed,
  }
  package { 'linux-lts':
    ensure => installed,
  }
  package { 'linux-lts-headers':
    ensure => installed,
  }
  package { 'linux-zen':
    ensure => installed,
  }
  package { 'linux-zen-headers':
    ensure => installed,
  }
  package { 'mpv':
    ensure => installed,
  }
  exec { 'xcursor-breeze':
    command => '/usr/bin/yay -S --sudoloop --noconfirm --save xcursor-breeze',
    unless => '/usr/bin/pacman -Qi xcursor-breeze',
  }
  package { 'tlp':
    ensure => installed,
  }
  service { 'tlp.service':
    ensure => running,
    enable => true,
    require => Package['tlp'],
  }
  package { 'vim':
    ensure => installed,
  }
  exec { 'vundle':
    command => '/usr/bin/yay -S --sudoloop --noconfirm --save vundle',
    unless => '/usr/bin/pacman -Qi vundle',
  }
  exec { 'font-victor-mono':
    command => '/usr/bin/yay -S --sudoloop --noconfirm --save font-victor-mono',
    unless => '/usr/bin/pacman -Qi font-victor-mono',
  }
  package { 'bash-completion':
    ensure => installed,
  }
  package { 'bash-git-prompt':
    ensure => installed,
  }
}
