#
class software::music () {
  $packages = [
    'rtirq',
    'qjackctl',
  ]

  $packages.each |String $package| {
    package { $package:
      ensure => latest,
    }
  }
}
