# TODO: write class ipsec::config
class ipsec::config {
  assert_private()

  $service_name         = $ipsec::service_name

  $myid                 = $ipsec::myid
  $protostack           = $ipsec::protostack
  $interfaces           = $ipsec::interfaces
  $listen               = $ipsec::listen
  $ikeport              = $ipsec::ikeport
  $nat_ikeport          = $ipsec::nat_ikeport
  $keep_alive           = $ipsec::keep_alive
  $retransmits          = $ipsec::retransmits
  $virtual_private      = $ipsec::virtual_private
  $myvendorid           = $ipsec::myvendorid
  $nhelpers             = $ipsec::nhelpers
  $secctx_attr_value    = $ipsec::secctx_attr_value
  $plutofork            = $ipsec::plutofork
  $crlcheckinterval     = $ipsec::crlcheckinterval
  $strictcrlpolicy      = $ipsec::strictcrlpolicy
  $syslog               = $ipsec::syslog
  $klipsdebug           = $ipsec::klipsdebug
  $plutodebug           = $ipsec::plutodebug
  $uniqueids            = $ipsec::uniqueids
  $plutorestartoncrash  = $ipsec::plutorestartoncrash
  $plutostderrlog       = $ipsec::plutostderrlog
  $plutostderrlogtime   = $ipsec::plutostderrlogtime
  $force_busy           = $ipsec::force_busy
  $dumpdir              = $ipsec::dumpdir
  $statsbin             = $ipsec::statsbin
  $ipsecdir             = $ipsec::ipsecdir
  $secretsfile          = $ipsec::secretsfile
  $perpeerlog           = $ipsec::perpeerlog
  $perpeerlogdir        = $ipsec::perpeerlogdir
  $fragicmp             = $ipsec::fragicmp
  $hidetos              = $ipsec::hidetos
  $overridemtu          = $ipsec::overridemtu

  file { '/etc/ipsec.conf':
    content => template('ipsec/ipsec.conf.erb'),
    ensure  => file,
    mode    => '0600',
    notify  => Service[ $service_name ],
    owner   => root,
  }

  file { '/etc/ipsec.secrets':
    content => template('ipsec/ipsec.secrets.erb'),
    ensure  => file,
    mode    => '0600',
    notify  => Service[ $service_name ],
    owner   => root,
  }
}
