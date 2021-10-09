class software::core {
  package { 'gparted':
    ensure => installed,
  }
  package { 'cronie':
    ensure => installed,
  }
  package { 'lastpass-cli':
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
  package { 'timeshift':
    ensure => installed,
  }
  package { 'gnome-tweaks':
    ensure => installed,
  }
  exec { 'gnome-shell-extension-arch-update':
    command => '/usr/bin/yay -S --sudoloop --noconfirm --save gnome-shell-extension-arch-update',
    unless  => '/usr/bin/pacman -Qi gnome-shell-extension-arch-update',
  }
  exec { 'gnome-shell-extension-just-perfection-desktop-git':
    command => '/usr/bin/yay -S --sudoloop --noconfirm --save gnome-shell-extension-just-perfection-desktop-git',
    unless  => '/usr/bin/pacman -Qi gnome-shell-extension-just-perfection-desktop-git',
  }
  exec { 'gnome-shell-extension-no-overview':
    command => '/usr/bin/yay -S --sudoloop --noconfirm --save gnome-shell-extension-no-overview',
    unless  => '/usr/bin/pacman -Qi gnome-shell-extension-no-overview',
  }
  exec { 'gnome-shell-extension-nordvpn-connect-git':
    command => '/usr/bin/yay -S --sudoloop --noconfirm --save gnome-shell-extension-nordvpn-connect-git',
    unless  => '/usr/bin/pacman -Qi gnome-shell-extension-nordvpn-connect-git',
    require => Exec['nordvpn-bin'],
  }
  exec { 'nordvpn-bin':
    command => '/usr/bin/yay -S --sudoloop --noconfirm --save nordvpn-bin',
    unless  => '/usr/bin/pacman -Qi nordvpn-bin',
  }
  exec { 'gnome-shell-extension-sound-output-device-chooser':
    command => '/usr/bin/yay -S --sudoloop --noconfirm --save gnome-shell-extension-sound-output-device-chooser',
    unless  => '/usr/bin/pacman -Qi gnome-shell-extension-sound-output-device-chooser',
  }
  exec { 'gnome-shell-extension-tray-icons-reloaded-git':
    command => '/usr/bin/yay -S --sudoloop --noconfirm --save gnome-shell-extension-tray-icons-reloaded-git',
    unless  => '/usr/bin/pacman -Qi gnome-shell-extension-tray-icons-reloaded-git',
  }
}
