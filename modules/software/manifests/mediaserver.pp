class software::mediaserver {
  package { 'transmission-gtk':
    ensure => installed,
  }
}
