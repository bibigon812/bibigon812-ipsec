## [Unreleased]
### Changed
- Parameters $left and $right become optional in ::ipsec::sa resource.

## [0.2.2] - 2016-12-06
### Fixed
- Copyright.

### Removed
- Custom restart from IPsec service.

## [0.2.1] - 2016-12-06
### Fixed
- Examples.

### Changed
- Examples.

## [0.2.0] - 2016-12-06
### Added
- Validation parameters of the ::ipsec::secrets resource.
- Test for ::ipsec::secrets resource.

### Changed
- Parameters $auto has default value 'ignore'.
- The filename of the SA configuration.
- The filename of the secrets.
- All parameters of the ::ipsec::secrets resource become optional.

## [0.1.4] - 2016-12-05
### Fixed
- IPsec service restart behavior.

## [0.1.3] - 2016-12-05
### Added
- Requirements in ::ipsec::service resource.
- Ensure in ::ipsec::sa resource.

### Changed
- Example.

## [0.1.2] - 2016-12-05
### Fixed
- The order of arguments in the ipsec::secrets resource.
- Changelog varions.
- Example in READEME.md

## [0.1.1] - 2016-12-05
### Added
- Added check for the presence of at least one of the secrets method.
- Added changelog.

### Changed
- Resource ::ipsec::tunnel to ::ipsec::sa.
- Resource ::ipsec::psk to ::ipsec::secrets.
- Template names.
- Parameter $auto of ::ipsec::sa resource became necessary.
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
