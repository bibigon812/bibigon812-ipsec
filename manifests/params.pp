class libreswan::params {
  $package_ensure = 'present'
  $config_dir     = '/etc/ipsec.d'

  case $::osfamily {
    'RedHat': {
      case $::operatingsystem {
        'Amazon': {
          $package_name = undef
          $service_name = undef
        }
        'Fedora': {
          if versioncmp($::operatingsystemrelease, '15') >= 0 {
            $package_name = 'libreswan'
          } else {
            $package_name = 'strongswan'
          }
          $service_name = 'ipsec'
        }
        default: {
          if versioncmp($::operatingsystemrelease, '7.0') >= 0 {
            $package_name = 'libreswan'
          } else {
            $package_name = 'strongswan'
          }
          $service_name = 'ipsec'
        }
      }
    }
    'Debian': {
      case $::operatingsystem {
        'Debian': {
          if versioncmp($::operatingsystemrelease, '8.0') >= 0 {
            $package_name = undef
            $service_name = undef
          } else {
            $package_name = undef
            $service_name = undef
          }
        }
        'Ubuntu': {
          if versioncmp($::operatingsystemrelease, '14.10') >= 0 {
            $package_name = undef
            $service_name = undef
          } else {
            $package_name = undef
            $service_name = undef
          }
        }
        default: {
          $package_name = 'libreswan'
          $service_name = 'ipsec'
        }
      }
    }
    'Gentoo': {
      $package_name = 'libreswan'
      $service_name = 'ipsec'
    }
    default: {
      case $::operatingsystem {
        'Archlinux': {
          $package_name = 'libreswan'
          $service_name = 'ipsec'
        }
        default: {
          $package_name = 'libreswan'
          $service_name = 'ipsec'
        }
      }
    }
  }
}
