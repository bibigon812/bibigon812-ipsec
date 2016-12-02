class ipsec::install {
  assert_private()

  file { $ipsec::config_dir:
    ensure => directory,
  }

  package { $ipsec::package_name:
    ensure => $ipsec::package_ensure,
    before => Service[ $ipsec::service_name ],
  }
}
