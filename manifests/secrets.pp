define ipsec::secrets (
  Enum['present', 'absent']
  $ensure = 'present',
  String
  $leftid,
  String
  $rightid,
  Optional[String]
  $psk    = undef,
  Optional[String]
  $rsa    = undef,
  Optional[String]
  $xauth  = undef,
) {

  include ::ipsec::params

  $package_name = $ipsec::params::package_name
  $service_name = $ipsec::params::service_name

  $file_ensure = $ensure ? {
    'present' => file,
    default   => absent,
  }

  $file_name = downcase(regsubst([$leftid, $rightid].join('_'), '[\s\.\@:-]', '_', 'G'))

  file { "/etc/ipsec.d/${file_name}.secrets":
    ensure  => $file_ensure,
    content => template('ipsec/sa.secrets.erb'),
    mode    => '0600',
    require => Package[ $package_name ],
    notify  => Service[ $service_name ],
  }
}
