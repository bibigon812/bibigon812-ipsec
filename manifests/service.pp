class ipsec::service {
  assert_private()

  service { $ipsec::service_name:
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    require    => Package[ $ipsec::package_name ],
  }
}
