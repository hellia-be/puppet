# This class is used to collect all the different configurations
#
class configuration (
  $username = 'hellia',
) {
  file { "/home/${username}":
    ensure => directory,
    owner  => $username,
    group  => $username,
  }

  file { "/home/${username}/games":
    ensure  => directory,
    owner   => $username,
    group   => $username,
    require => File["/home/${username}"],
  }

  file { "/home/${username}/git":
    ensure  => directory,
    owner   => $username,
    group   => $username,
    require => File["/home/${username}"],
  }

  file { "/home/${username}/git/aur":
    ensure  => directory,
    owner   => $username,
    group   => $username,
    require => File["/home/${username}/git"],
  }
}
