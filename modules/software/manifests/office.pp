class software::office {
  package { 'simplenote-electron-bin':
    ensure => installed,
  }
  package { 'docker':
    ensure => installed,
  }
  package { 'balena-cli-bin':
    ensure => installed,
  }
  package { 'libreoffice-fresh':
    ensure => installed,
  }
  package { 'fractal':
    ensure => installed,
  }
  package { 'rocketchat-desktop':
    ensure => installed,
  }
  package { 'thunderbird':
    ensure => installed,
  }
  package { 'sshuttle':
    ensure => installed,
  }
}
