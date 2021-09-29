class software::office {
  package { 'libreoffice-fresh':
    ensure => installed,
  }
  package { 'signal-desktop':
    ensure => installed,
  }
  package { 'transmission-gtk':
    ensure => installed,
  }
}
