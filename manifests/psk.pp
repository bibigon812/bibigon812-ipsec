define ipsec::psk (
  String $leftid,
  String $rightid,
) {
  include ::ipsec::params

  $package_name = $ipsec::params::package_name

  $file_name = downcase(regsubst([$leftid, $rightid].join('_'), '[\s\.:-]+', '_', 'G'))

  file { "/etc/ipsec.d/${file_name}.secrets":
    content => template('ipsec/tunnel.secrets.erb'),
    ensure => file,
    mode   => '0600',
    require => Package[ $package_name ],
  }
}
