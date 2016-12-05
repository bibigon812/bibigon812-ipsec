define ipsec::sa (
  Pattern[/\A(\d+)\.(\d+)\.(\d+)\.(\d+)\Z/]
  $left,
  Pattern[/\A(\d+)\.(\d+)\.(\d+)\.(\d+)\Z/]
  $right,
  Optional[Enum['add', 'ondemand', 'start', 'ignore', 'route']]
  $auto,

  Optional[Enum['ipv4', 'ipv6']]
  $connaddrfamily       = undef,
  Optional[Enum['tunnel', 'transport', 'passthrough', 'drop', 'reject']]
  $type                 = undef,
  Optional[Pattern[/\A(\d+)\.(\d+)\.(\d+)\.(\d+)\/(\d+)\Z/]]
  $leftsubnet           = undef,
  Optional[Array[Pattern[/\A(\d+)\.(\d+)\.(\d+)\.(\d+)\/(\d+)\Z/]]]
  $leftsubnets          = undef,
  $leftaddresspool      = undef,
  $leftprotoport        = undef,
  $leftnexthop          = undef,
  $leftsourceip         = undef,
  $leftupdown           = undef,
  Optional[Pattern[/\A(\d+)\.(\d+)\.(\d+)\.(\d+)\/(\d+)\Z/]]
  $rightsubnet          = undef,
  Optional[Array[Pattern[/\A(\d+)\.(\d+)\.(\d+)\.(\d+)\/(\d+)\Z/]]]
  $rightsubnets         = undef,
  $rightaddresspool     = undef,
  $rightprotoport       = undef,
  $rightnexthop         = undef,
  $rightsourceip        = undef,
  $rightupdown          = undef,

  Optional[Enum['secret', 'rsasig', 'never']]
  $authby               = undef,
  Optional[Pattern['\A(aes(128|256)?|3des)-(md5|sha[12]?);dh\d+\Z']]
  $ike                  = undef,
  Optional[Enum['esp', 'ah']]
  $phase2               = undef,
  Optional[Pattern['\A(aes(128|256)?|3des)-(md5|sha[12]?);dh\d+\Z']]
  $phase2alg            = undef,
  Optional[Enum['yes', 'no']]
  $sha2_truncbug        = undef,
  Optional[Enum['drafts', 'rfc', 'both']]
  $nat_ikev1_method     = undef,
  Optional[Enum['hmac-md5']]
  $ah                   = undef,
  Optional[Enum['yes', 'no']]
  $ike_frag             = undef,
  Optional[Enum['yes', 'no']]
  $ikepad               = undef,
  Optional[Enum['permit', 'never', 'no', 'propose', 'yes', 'insist']]
  $ikev2                = undef,
  Optional[Enum['yes', 'no']]
  $narrowing            = undef,
  Optional[Enum['yes', 'no', 'conntrack']]
  $sareftrack           = undef,
  Optional[String]
  $leftid               = undef,
  Optional[String]
  $leftrsasigkey        = undef,
  Optional[String]
  $leftrsasigkey2       = undef,
  Optional[String]
  $leftcert             = undef,
  Optional[String]
  $leftca               = undef,
  Optional[String]
  $leftsendcert         = undef,
  Optional[String]
  $leftxauthserver      = undef,
  Optional[String]
  $leftxauthclient      = undef,
  Optional[String]
  $leftxauthusername    = undef,
  Optional[String]
  $leftmodecfgserver    = undef,
  Optional[String]
  $leftmodecfgclient    = undef,
  Optional[String]
  $rightid              = undef,
  Optional[String]
  $rightrsasigkey       = undef,
  Optional[String]
  $rightrsasigkey2      = undef,
  Optional[String]
  $rightcert            = undef,
  Optional[String]
  $rightca              = undef,
  Optional[String]
  $rightsendcert        = undef,
  Optional[String]
  $rightxauthserver     = undef,
  Optional[String]
  $rightxauthclient     = undef,
  Optional[String]
  $rightxauthusername   = undef,
  Optional[String]
  $rightmodecfgserver   = undef,
  Optional[String]
  $rightmodecfgclient   = undef,
  Optional[String]
  $xauthby              = undef,
  Optional[String]
  $xauthfail            = undef,
  Optional[Enum['yes', 'no']]
  $modecfgpull          = undef,
  Optional[String]
  $modecfgdns1          = undef,
  Optional[String]
  $modecfgdns2          = undef,
  Optional[String]
  $modecfgdomain        = undef,
  Optional[String]
  $modecfgbanner        = undef,
  Optional[Enum['cisco', 'ietf']]
  $remote_peer_type     = undef,
  Optional[Enum['yes', 'no']]
  $nm_configured        = undef,
  Optional[Enum['yes', 'no']]
  $forceencaps          = undef,
  Optional[Enum['yes', 'no']]
  $nat_keepalive        = undef,
  Optional[Enum['yes', 'no']]
  $initial_contact      = undef,
  Optional[Enum['yes', 'no']]
  $cisco_unity          = undef,
  Optional[Enum['yes', 'no']]
  $overlapip            = undef,
  Optional[String]
  $reqid                = undef,
  Optional[Integer[0]]
  $dpddelay             = undef,
  Optional[Integer[0]]
  $dpdtimeout           = undef,
  Optional[Enum['hold', 'clear', 'restart']]
  $dpdaction            = undef,
  Optional[Enum['yes', 'no']]
  $pfs                  = undef,
  Optional[Enum['yes', 'no']]
  $aggrmode             = undef,
  Optional[Pattern['\A\d+[mhd]?\Z']]
  $salifetime           = undef,
  Optional[Enum['yes', 'no']]
  $rekey                = undef,
  Optional[Pattern['\A\d+[mhd]?\Z']]
  $rekeymargin          = undef,
  Optional[Pattern['\A(1[0-9][0-9]|[1-9][0-9]|[0-9])%\Z']]
  $rekeyfuzz            = undef,
  Optional[Variant[Integer[0], Enum['%forever']]]
  $keyingtries          = undef,
  Optional[Pattern['\A\d+[mhd]?\Z']]
  $ikelifetime          = undef,
  Optional[Enum['yes', 'no']]
  $compress             = undef,
  Optional[Integer[1]]
  $metric               = undef,
  Optional[Integer[500]]
  $mtu                  = undef,
  Optional[Integer[1,65535]]
  $priority             = undef,
  Optional[Enum['yes', 'no']]
  $disablearrivalcheck  = undef,
  Optional[Enum['yes', 'no']]
  $labeled_ipsec        = undef,
  Optional[String]
  $policy_label         = undef,
  Optional[Enum['yes', 'no']]
  $loopback             = undef,
  Optional[Enum['none', 'passthrough', 'drop', 'reject']]
  $failureshunt         = undef,
) {

  include ::ipsec::params

  $config_dir           = $ipsec::params::config_dir
  $service_name         = $ipsec::params::service_name
  $package_name         = $ipsec::params::package_name

  $real_leftid = $leftid ? {
    undef   => $left,
    default => $leftid,
  }

  $real_rightid = $rightid ? {
    undef   => $right,
    default => $rightid,
  }

  $file_name = downcase(regsubst([$real_leftid, $real_rightid].join('_'),
    '[\s\.\@:-]', '_', 'G'))

  file { "${config_dir}/${file_name}.conf":
    ensure  => file,
    content => template('ipsec/sa.conf.erb'),
    notify  => Service[ $service_name ],
    require => Package[ $package_name ],
  }
}
