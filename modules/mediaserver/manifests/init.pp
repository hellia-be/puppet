class mediaserver {
  package { 'jellyfin':
    ensure => installed,
  }
  service { 'jellyfin.service':
    ensure  => running,
    enable  => true,
    require => Package['jellyfin'],
  }
  package { 'plex-media-server':
    ensure => installed,
  }
  service { 'plexmediaserver.service':
    ensure  => running,
    enable  => true,
    require => Package['plex-media-server'],
  }
  package { 'samba':
    ensure => installed,
  }
  service { 'smb.service':
    ensure  => running,
    enable  => true,
    require => Package['samba'],
  }
  file { '/etc/samba/smb.conf':
    ensure  => present,
    source  => 'https://raw.githubusercontent.com/hellia-be/dotfiles/main/mediaserver/smb.conf',
    require => Package['samba'],
    notify  => Service['smb.service'],
  }
}
