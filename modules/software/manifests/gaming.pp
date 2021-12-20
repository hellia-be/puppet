class software::gaming {
  package { 'miniongg':
    ensure => installed,
  }
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
  package { 'lutris':
    ensure => installed,
  }
}
