## [Unreleased]
### Added
- Added check for the presence of at least one of the secrets method.
- Added changelog.

### Changed
- Class ::ipsec::tunnel to ::ipsec::sa.
- Class ::ipsec::psk to ::ipsec::secrets.
- Template names.
- Parameter $auto of class ::ipsec::sa became necessary.
- Added check for the presence of at least one of the secrets method.

## [0.1.0] - 2016-12-02
### Added
- Base module functional.
- ::ipsec: main class of the module.
- ::ipsec::params: class with base parameters.
- ::ipsec::install: class to install IPsec service.
- ::ipsec::config: class to configure IPsec service.
- ::ipsec::service: class to manage IPsec service.
- ::ipsec::tunnel: resource with connection parameters.
- ::ipsec::psk: resource with secrets information.
