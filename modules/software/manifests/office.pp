class software::office {
  package { 'libreoffice-fresh':
    ensure => installed,
  }
  package { 'transmission-gtk':
    ensure => installed,
  }
  package { 'fractal':
    ensure => installed,
  }
}
