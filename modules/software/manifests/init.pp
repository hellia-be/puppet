# This class is used to collect all the installed software
#
class software () {

  $packages = [
    'base',
    'base-devel',
    'git',
    'zip',
    'unzip',
    'code',
  ]

  $packages.each |String $package| {
    package { $package:
      ensure => latest,
    }
  }

  contain software::kernel
  contain software::nvidia
  contain software::systemdboot
  contain software::sddm
  contain software::mkinitcpio
  contain software::hyprland
  contain software::photography
}
