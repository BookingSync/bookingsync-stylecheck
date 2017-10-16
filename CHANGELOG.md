# Change Log
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased]

## [0.0.11] - 2017-10-16
- Lint/UselessAssignment enabled
- Layout/AlignHash disabled
- SingleLineBlockParams disabled
- Fix namespace warnings

## [0.0.10] - 2017-06-19
- Fix broken config following Rubocop update

## [0.0.9] - 2017-06-19 (broken release)
- Allow to use and/or (to use for early returns only)
- Update Rubocop to ~> 0.49.0

## [0.0.8]
- add --display-cop-names options for cleaner output
- update Rubocop to recent version
- use DisabledByDefault: true and remove unnecessary config entries

## [0.0.7]
- take TargetRubyVersion from .ruby-version file

## [0.0.6]
- fix release timestamps
- run checks on this gem
- enable to run on non railties projects and other gems

## [0.0.5]
- prefer alias_method
- enable vaious more cops
- add some comment cops, disable FrozenStringLiteralComment and InlineComment

## [0.0.4]
- rake task that accepts custom commands to be passed to Rubocop
