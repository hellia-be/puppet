class software::cron {
  package { 'cronie':
    ensure => installed,
  }
}
