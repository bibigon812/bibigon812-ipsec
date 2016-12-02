class libreswan::install {
  assert_private()

  file { $libreswan::config_dir:
    ensure => directory,
  }

  package { $libreswan::package_name:
    ensure => $libreswan::package_ensure,
    before => Service[ $libreswan::service_name ],
  }
}
