class ipsec::service {
  assert_private()

  service { $ipsec::service_name:
    enable     => true,
    ensure     => running,
    hasrestart => true,
    hasstatus  => true,
  }
}
