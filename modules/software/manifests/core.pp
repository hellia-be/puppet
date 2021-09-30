class software::core {
  package { 'cronie':
    ensure => installed,
  }
  package { 'lastpass-cli':
    ensure => installed,
  }
  package { 'xsel':
    ensure => installed,
  }
  package { 'dmenu':
    ensure => installed,
  }
  package { 'terminator':
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
  package { 'lxappearance':
    ensure => installed,
  }
  package { 'mpv':
    ensure => installed,
  }
  package { 'pcmanfm':
    ensure => installed,
  }
  package { 'spectrwm':
    ensure => installed,
  }
  package { 'xlockmore':
    ensure => installed,
  }
  package { 'dunst':
    ensure => installed,
  }
  package { 'nitrogen':
    ensure => installed,
  }
  package { 'scrot':
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
