class software::office {
  package { 'simplenote-electron-bin':
    ensure => installed,
  }
  package { 'docker':
    ensure => absent,
  }
  package { 'balena-cli-bin':
    ensure => absent,
  }
  package { 'libreoffice-fresh':
    ensure => installed,
  }
  package { 'fractal':
    ensure => absent,
  }
  package { 'signal-desktop':
    ensure => installed,
  }
  package { 'rocketchat-desktop':
    ensure => absent,
  }
  package { 'thunderbird':
    ensure => absent,
  }
  package { 'sshuttle':
    ensure => absent,
  }
}
