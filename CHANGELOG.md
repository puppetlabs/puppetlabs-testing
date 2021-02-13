# Change log

All notable changes to this project will be documented in this file. The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/) and this project adheres to [Semantic Versioning](http://semver.org).

## [v4.3.0](https://github.com/puppetlabs/puppetlabs-testing/tree/v4.3.0) (2021-02-13)

[Full Changelog](https://github.com/puppetlabs/puppetlabs-testing/compare/v1.9.0...v4.3.0)

### Added

- Change the manual workflow to ask for a facade URL [\#307](https://github.com/puppetlabs/puppetlabs-testing/pull/307) ([DavidS](https://github.com/DavidS))

### UNCATEGORIZED PRS; LABEL THEM ON GITHUB

- PDK "update" for the manually configured workflows [\#338](https://github.com/puppetlabs/puppetlabs-testing/pull/338) ([DavidS](https://github.com/DavidS))
- Update repo\_dispatch workflow [\#332](https://github.com/puppetlabs/puppetlabs-testing/pull/332) ([carabasdaniel](https://github.com/carabasdaniel))
- Buildevents v2 [\#321](https://github.com/puppetlabs/puppetlabs-testing/pull/321) ([DavidS](https://github.com/DavidS))
- Use the new pdk-templates to render the nightly and PR workflows [\#319](https://github.com/puppetlabs/puppetlabs-testing/pull/319) ([DavidS](https://github.com/DavidS))
- Protect nightlies and PR actions from running when no VMs are provisionable [\#318](https://github.com/puppetlabs/puppetlabs-testing/pull/318) ([DavidS](https://github.com/DavidS))
- Update PDK templates for gitpod [\#314](https://github.com/puppetlabs/puppetlabs-testing/pull/314) ([DavidS](https://github.com/DavidS))
- update puppet extension [\#313](https://github.com/puppetlabs/puppetlabs-testing/pull/313) ([DavidS](https://github.com/DavidS))
- enable gitpod; PDK update; remove expensive travis and appveyor tests [\#312](https://github.com/puppetlabs/puppetlabs-testing/pull/312) ([DavidS](https://github.com/DavidS))
- Update to current workflow template, add matrix prototype [\#308](https://github.com/puppetlabs/puppetlabs-testing/pull/308) ([DavidS](https://github.com/DavidS))
- Restore missing litmus dependency; add warning to README [\#300](https://github.com/puppetlabs/puppetlabs-testing/pull/300) ([DavidS](https://github.com/DavidS))
- \(MODULES-9790\) Adding gemfile changes for gemtest [\#277](https://github.com/puppetlabs/puppetlabs-testing/pull/277) ([sheenaajay](https://github.com/sheenaajay))
- test template [\#258](https://github.com/puppetlabs/puppetlabs-testing/pull/258) ([pmcmaw](https://github.com/pmcmaw))
- Populating with module content.  [\#1](https://github.com/puppetlabs/puppetlabs-testing/pull/1) ([pmcmaw](https://github.com/pmcmaw))

## 1.9.0
## Summary
This release includes a change that makes this module *compatible* with AIX.

#### Added
- Make mdlj compatible with AIX. ([MODULES-7069](https://tickets.puppetlabs.com/browse/MODULES-7069))
- Parameter `windows_mdlj_title` to allow users to customize the Windows message of the day title.
- Converted to the latest version of PDK (1.5.0).

## Release 1.8.0
### Summary
This release includes a change that makes this module *compatible* with FreeBSD.

#### Added
- Make mdlj compatible with FreeBSD. ([MODULES-6599](https://tickets.puppetlabs.com/browse/MODULES-6599))

## Release 1.7.0
### Summary
Release for PDK 1.3.2 compatibility.

#### Changed
- Converted to the latest version of PDK. Mainly introduces travis to the release branch.

## Release 1.6.0
### Summary
A release that updates mdlj to become PDK compatible.

#### Changed
- All changes in this release are the product of PDK convert, the module is now PDK compatible.

## Release 1.5.1
### Summary
This release is to update the formatting of the module, rubocop having been run for all ruby files and been set to run automatically on all future commits.

### Changed
- Rubocop has been implemented.

## Release 1.5.0
### Summary
This release is a rollup of changes.

#### Features:
- Support added for Solaris SunOS.
- Default mdlj message changed to provide greater out of the box usability.
- Removed support for deprecated versions of Ubuntu.
- Added a permissions mode for the file.

#### Bug Fixes:
- Changed fact processor name.

## Release 1.4.0
### Summary
First Puppet Labs supported release of this module! Contains new features and bug fixes for tests.

#### Features:
- New readme file added for tests. Also several new tests added.
- Addition of handling in tests to run with Debian 8.

#### Bug Fixes:
- Tests tweaked to handle several Debian versions.
- Fixed acceptance tests for Windows.


## Release 1.3.0
### Summary
This release adds documentation updates, test improvements, and os support.

#### Features:
- Acceptance testing on Linux platforms.
- Rewritten documentation, inclusion of strings for automated documentation.
- Linting of manifest to conform to style guidelines.
- Adds support for several operating systems:
  - Debian 6, 7
  - CentOS 5, 6, 7
  - Oracle Linux 6, 7
  - Scientific Linux 5, 6, 7

### 2014-10-31 Release 1.2.0
### Summary
- Add content parameter to allow setting static mdlj content.

## 2014-07-15 Release 1.1.1
###Summary

This release merely updates metadata.json so the module can be uninstalled and
upgraded via the puppet module command.

## 2014-05-28 Release 1.1.0
###Summary

The main feature of this release is support for external templates.
It also includes documentation and testing improvements.

####Features

- Added class parameter to support external templates.
- Updated README documentation.
- Improved Testing.

####Fixes

- Add LICENSE file.

####Known Bugs


\* *This Changelog was automatically generated by [github_changelog_generator](https://github.com/github-changelog-generator/github-changelog-generator)*
