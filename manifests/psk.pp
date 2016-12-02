define ipsec::psk (
  String $leftid,
  String $rightid,
  String $psk,
) {
  assert_private()

  include ::ipsec::params

  $package_name = $ipsec::params::package_name
  $service_name = $ipsec::params::service_name

  $file_name = downcase(regsubst([$leftid, $rightid].join('_'), '[\s\.:-]+', '_', 'G'))

  file { "/etc/ipsec.d/tunnel_${name}.secrets":
    content => template('ipsec/tunnel.secrets.erb'),
    ensure  => file,
    mode    => '0600',
    require => Package[ $package_name ],
    notify  => Service[ $service_name ],
  }
}
