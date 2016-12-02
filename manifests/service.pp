class libreswan::service {
  assert_private()

  service { $libreswan::service_name:
    enable     => true,
    ensure     => running,
    hasrestart => true,
    hasstatus  => true,
  }
}
