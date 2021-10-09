class software::gaming {
  package { 'discord':
    ensure => installed,
  }
  package { 'spotify':
    ensure => installed,
  }
  package { 'steam':
    ensure => installed,
  }
  package { 'ttf-ms-fonts':
    ensure => installed,
  }
}
