## [Unreleased]
### Changed
- Class ::ipsec::tunnel to ::ipsec::sa.
- Class ::ipsec::psk to ::ipsec::secrets.
- Template names.
- Parameter $auto of class ::ipsec::sa became necessary.

## [0.1.0] - 2016-12-03
### Added
- Base module functional.
- ::ipsec: main class of the module.
- ::ipsec::params: class with base parameters.
- ::ipsec::install: class to install IPsec service.
- ::ipsec::config: class to configure IPsec service.
- ::ipsec::service: class to manage IPsec service.
- ::ipsec::tunnel: resource with connection parameters.
- ::ipsec::psk: resource with secrets information.
