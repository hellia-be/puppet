class software::office {
  package { 'libreoffice-fresh':
    ensure => installed,
  }
  package { 'fractal':
    ensure => installed,
  }
}
