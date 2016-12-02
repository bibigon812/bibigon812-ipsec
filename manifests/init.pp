class libreswan (

  $package_name         = $libreswan::params::package_name,
  $package_ensure       = $libreswan::params::package_ensure,
  $service_name         = $libreswan::params::service_name,
  $config_dir           = $libreswan::params::config_dir,

  Optional[String]
  $myid                 = undef,
  Optional[Enum['klips', 'mast', 'netkey']]
  $protostack           = undef,
  Optional[Array[Pattern[/\A%none\Z/, /\A%defaultroute\Z/, /\A\w+=\w+\Z/]]]
  $interfaces           = undef,
  Optional[String]
  $listen               = undef,
  Optional[Integer[1,65535]]
  $ikeport              = undef,
  Optional[Integer[1,65525]]
  $nat_ikeport          = undef,
  Optional[Integer[1]]
  $keep_alive           = undef,
  Optional[Enum['yes', 'no']]
  $retransmits          = undef,
  Optional[Array[String]]
  $virtual_private      = undef,
  Optional[String]
  $myvendorid           = undef,
  Optional[Integer[-1]]
  $nhelpers             = undef,
  Optional[Integer]
  $secctx_attr_value    = undef,
  Optional[Enum['yes', 'no']]
  $plutofork            = undef,
  Optional[Integer[0]]
  $crlcheckinterval     = undef,
  Optional[Enum['yes', 'no']]
  $strictcrlpolicy      = undef,
  Optional[Pattern[/\A\w+\.\w+\Z/]]
  $syslog               = undef,
  Optional[Enum['all', 'none']]
  $klipsdebug           = undef,
  Optional[Enum['all', 'none']]
  $plutodebug           = undef,
  Optional[Enum['yes', 'no']]
  $uniqueids            = undef,
  Optional[Enum['yes', 'no']]
  $plutorestartoncrash  = undef,
  Optional[Stdlib::Absolutepath]
  $plutostderrlog       = undef,
  Optional[Enum['yes', 'no']]
  $plutostderrlogtime   = undef,
  Optional[Enum['yes', 'no']]
  $force_busy           = undef,
  Optional[Stdlib::Absolutepath]
  $dumpdir              = undef,
  Optional[Stdlib::Absolutepath]
  $statsbin             = undef,
  Optional[Stdlib::Absolutepath]
  $ipsecdir             = undef,
  Optional[Stdlib::Absolutepath]
  $secretsfile          = undef,
  Optional[Enum['yes', 'no']]
  $perpeerlog           = undef,
  Optional[Stdlib::Absolutepath]
  $perpeerlogdir        = undef,
  Optional[Enum['yes', 'no']]
  $fragicmp             = undef,
  Optional[Enum['yes', 'no']]
  $hidetos              = undef,
  Optional[Integer[1]]
  $overridemtu          = undef,

) inherits libreswan::params {

  if $interfaces {
    validate_array($interfaces)
    validate_re_array($interfaces, ['^%none$', '^%defaultroute$', '(\w+=\w+)'])
  }
  if $listen {
    validate_string($listen)
    validete_ip
  }

  if $hidetos { validate_re($hidetos, '^(yes|no)$')}

  class { "::${title}::install": }
  class { "::${title}::config":  }
  class { "::${title}::service": }
}
