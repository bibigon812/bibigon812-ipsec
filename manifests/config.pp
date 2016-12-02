# TODO: write class libreswan::config
class libreswan::config {
  assert_private()

  $service_name         = $::libreswan::service_name

  $myid                 = $::libreswan::myid
  $protostack           = $::libreswan::protostack
  $interfaces           = $::libreswan::interfaces
  $listen               = $::libreswan::listen
  $ikeport              = $::libreswan::ikeport
  $nat_ikeport          = $::libreswan::nat_ikeport
  $keep_alive           = $::libreswan::keep_alive
  $retransmits          = $::libreswan::retransmits
  $virtual_private      = $::libreswan::virtual_private
  $myvendorid           = $::libreswan::myvendorid
  $nhelpers             = $::libreswan::nhelpers
  $secctx_attr_value    = $::libreswan::secctx_attr_value
  $plutofork            = $::libreswan::plutofork
  $crlcheckinterval     = $::libreswan::crlcheckinterval
  $strictcrlpolicy      = $::libreswan::strictcrlpolicy
  $syslog               = $::libreswan::syslog
  $klipsdebug           = $::libreswan::klipsdebug
  $plutodebug           = $::libreswan::plutodebug
  $uniqueids            = $::libreswan::uniqueids
  $plutorestartoncrash  = $::libreswan::plutorestartoncrash
  $plutostderrlog       = $::libreswan::plutostderrlog
  $plutostderrlogtime   = $::libreswan::plutostderrlogtime
  $force_busy           = $::libreswan::force_busy
  $dumpdir              = $::libreswan::dumpdir
  $statsbin             = $::libreswan::statsbin
  $ipsecdir             = $::libreswan::ipsecdir
  $secretsfile          = $::libreswan::secretsfile
  $perpeerlog           = $::libreswan::perpeerlog
  $perpeerlogdir        = $::libreswan::perpeerlogdir
  $fragicmp             = $::libreswan::fragicmp
  $hidetos              = $::libreswan::hidetos
  $overridemtu          = $::libreswan::overridemtu

  file { '/etc/ipsec.conf':
    content => template('libreswan/ipsec.conf.erb'),
    ensure  => file,
    mode    => 0600,
    notify  => Service[ $service_name ],
    owner   => root,
  }
}
