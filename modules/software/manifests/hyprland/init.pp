#
class software::hyprland (
  $username = 'hellia'
) {
  $packages = [
    'polkit-gnome',
    'ffmpeg',
    'neovim',
    'viewnior',
    'rofi',
    'pavucontrol',
    'thunar',
    'starship',
    'wl-clipboard',
    'wf-recorder',
    'swaybg',
    'ffmpegthumbnailer',
    'tumbler',
    'playerctl',
    'noise-suppression-for-voice',
    'thunar-archive-plugin',
    'kitty',
    'pamixer',
    'papirus-icon-theme',
    'dunst',
    'qt5-wayland',
    'qt5ct',
    'libva',
    'rofi-emoji',
    'transmission-gtk',
    'signal-desktop',
    'libreoffice-fresh',
    'mpv',
    'gvfs',
    'gvfs-smb',
    'smbclient',
    'bash-completion',
  ]

  $packages.each |String $package| {
    package { $package:
      ensure => latest,
    }
  }

  file { "/home/${username}/.local":
    ensure => directory,
    owner  => $username,
    group  => $username,
  }

  file { "/home/${username}/.local/bin":
    ensure  => directory,
    owner   => $username,
    group   => $username,
    require => File["/home/${username}/.local"],
  }

  file { "/home/${username}/.local/bin/wrappedhl":
    ensure  => file,
    owner   => $username,
    group   => $username,
    mode    => '0755',
    require => File["/home/${username}/.local/bin"],
    source  => 'puppet:///modules/software/wrappedhl',
  }

  file { '/usr/share/wayland-sessions/wrapped-hl.desktop':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    require => File["/home/${username}/.local/bin/wrappedhl"],
    content => template('software/wrapped-hl.erb'),
  }

  file { "/home/${username}/.config/dunst":
    ensure => directory,
    owner  => $username,
    group  => $username,
  }

  file { "/home/${username}/.config/dunst/dunstrc":
    ensure  => file,
    owner   => $username,
    group   => $username,
    source  => 'puppet:///modules/software/dunstrc',
    require => File["/home/${username}/.config/dunst"],
  }

  file { "/home/${username}/.config/hypr/hyprland.conf":
    ensure  => file,
    owner   => $username,
    group   => $username,
    source  => 'puppet:///modules/software/hyprland.conf',
    require => File["/home/${username}/.config"],
  }

  file { "/home/${username}/.config/hypr/keybind":
    ensure  => file,
    owner   => $username,
    group   => $username,
    mode    => '0755',
    source  => 'puppet:///modules/software/keybind',
    require => File["/home/${username}/.config"],
  }

  file { "/home/${username}/.config/hypr/xdg-portal-hyprland":
    ensure  => file,
    owner   => $username,
    group   => $username,
    source  => 'puppet:///modules/software/xdg-portal-hyprland',
    require => File["/home/${username}/.config"],
  }

  file { "/home/${username}/.config/kitty":
    ensure  => directory,
    owner   => $username,
    group   => $username,
    require => File["/home/${username}/.config"],
  }

  file { "/home/${username}/.config/kitty/kitty.conf":
    ensure  => file,
    owner   => $username,
    group   => $username,
    source  => 'puppet:///modules/software/kitty.conf',
    require => File["/home/${username}/.config"],
  }

  file { "/home/${username}/.config/kitty/theme.conf":
    ensure  => file,
    owner   => $username,
    group   => $username,
    source  => 'puppet:///modules/software/theme.conf',
    require => File["/home/${username}/.config"],
  }

  file { "/home/${username}/.config/rofi":
    ensure  => directory,
    owner   => $username,
    group   => $username,
    require => File["/home/${username}/.config"],
  }

  archive { '/tmp/rofi.zip':
    ensure       => present,
    source       => 'puppet:///modules/software/rofi.zip',
    user         => $username,
    group        => $username,
    extract      => true,
    extract_path => "/home/${username}/.config/rofi/",
    creates      => "/home/${username}/.config/rofi/config.rasi",
    cleanup      => true,
    require      => File["/home/${username}/.config/rofi"],
  }

  file { "/home/${username}/.config/swaylock":
    ensure  => directory,
    owner   => $username,
    group   => $username,
    require => File["/home/${username}/.config"],
  }

  file { "/home/${username}/.config/swaylock/config":
    ensure  => file,
    owner   => $username,
    group   => $username,
    source  => 'puppet:///modules/software/config',
    require => File["/home/${username}/.config"],
  }

  file { "/home/${username}/.config/waybar":
    ensure  => directory,
    owner   => $username,
    group   => $username,
    require => File["/home/${username}/.config"],
  }

  archive { '/tmp/waybar.zip':
    ensure       => present,
    source       => 'puppet:///modules/software/waybar.zip',
    user         => $username,
    group        => $username,
    extract      => true,
    extract_path => "/home/${username}/.config/waybar/",
    creates      => "/home/${username}/.config/waybar/config.jsonc",
    cleanup      => true,
    require      => File["/home/${username}/.config/waybar"],
  }

  file { "/home/${username}/.config/wlogout":
    ensure  => directory,
    owner   => $username,
    group   => $username,
    require => File["/home/${username}/.config"],
  }

  archive { '/tmp/wlogout.zip':
    ensure       => present,
    source       => 'puppet:///modules/software/wlogout.zip',
    user         => $username,
    group        => $username,
    extract      => true,
    extract_path => "/home/${username}/.config/wlogout/",
    creates      => "/home/${username}/.config/wlogout/style.css",
    cleanup      => true,
    require      => File["/home/${username}/.config/wlogout"],
  }

  archive { '/tmp/CascadiaCode.zip':
    ensure       => present,
    source       => 'https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.1/CascadiaCode.zip',
    user         => 'root',
    group        => 'root',
    extract      => true,
    extract_path => '/usr/share/fonts/',
    creates      => '/usr/share/fonts/nerdfonts/readme.md',
    cleanup      => true,
  }

  file { "/home/${username}/.config/starship":
    ensure  => directory,
    owner   => $username,
    group   => $username,
    require => File["/home/${username}/.config"],
  }

  file { "/home/${username}/.config/starship/starship.toml":
    ensure  => file,
    owner   => $username,
    group   => $username,
    source  => 'puppet:///modules/software/starship.toml',
    require => File["/home/${username}/.config/starship"],
  }

  file { "/home/${username}/.bashrc":
    ensure => file,
    owner  => $username,
    group  => $username,
    source => 'puppet:///modules/software/bashrc',
  }

  file { "/home/${username}/.inputrc":
    ensure => file,
    owner  => $username,
    group  => $username,
    source => 'puppet:///modules/software/inputrc',
  }
}
