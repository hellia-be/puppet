class software::photography {
  package { 'darktable':
    ensure => installed,
  }
  package { 'gimp':
    ensure => installed,
  }
}
