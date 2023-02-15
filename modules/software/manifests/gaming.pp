#
class software::gaming () {
  $packages = [
    'steam',
    'discord',
    'lutris',
    'jre-openjdk',
    'wine-staging',
    'lib32-pipewire-jack',
    'qpwgraph',
    'realtime-privileges',
  ]

  $packages.each |String $package| {
    package { $package:
      ensure => latest,
    }
  }
}
