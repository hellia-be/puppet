#
class software::gaming () {
  $packages = [
    'steam',
    'discord',
  ]

  $packages.each |String $package| {
    package { $package:
      ensure => latest,
    }
  }
}
