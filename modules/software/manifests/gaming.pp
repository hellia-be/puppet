class software::gaming {
  package { 'discord':
    ensure => installed,
  }
  exec { 'spotify':
    command => '/usr/bin/yay -S --sudoloop --noconfirm --save spotify',
    unless => '/usr/bin/pacman -Qi spotify',
  }
  package { 'steam':
    ensure => installed,
  }
  exec { 'ttf-ms-fonts':
    command => '/usr/bin/yay -S --sudoloop --noconfirm --save ttf-ms-fonts',
    unless => '/usr/bin/pacman -Qi ttf-ms-fonts',
  }
}
