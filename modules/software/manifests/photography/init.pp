#
class software::photography () {
  $packages = [
    'gimp',
    'darktable',
  ]

  $packages.each |String $package| {
    package { $package:
      ensure => latest,
    }
  }
}
