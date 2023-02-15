#
class software::kernel () {
  package { 'linux-zen':
    ensure => latest,
  }

  package { 'linux-zen-headers':
    ensure  => latest,
    require => Package['linux-zen'],
  }

  package { 'linux-lts':
    ensure => latest,
  }

  package { 'linux-lts-headers':
    ensure  => latest,
    require => Package['linux-lts'],
  }
}
