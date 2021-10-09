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
  package { 'vundle':
    ensure => installed,
  }
  package { 'font-victor-mono':
    ensure => installed,
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
  package { 'gnome-shell-extension-arch-update':
    ensure => installed,
  }
  package { 'gnome-shell-extension-just-perfection-desktop-git':
    ensure => installed,
  }
  package { 'gnome-shell-extension-no-overview':
    ensure => installed,
  }
  package { 'gnome-shell-extension-nordvpn-connect-git':
    ensure  => installed,
    require => Package['nordvpn-bin'],
  }
  package { 'nordvpn-bin':
    ensure => installed,
  }
  package { 'gnome-shell-extension-sound-output-device-chooser':
    ensure => installed,
  }
  package { 'gnome-shell-extension-tray-icons-reloaded-git':
    ensure => installed,
  }
}
