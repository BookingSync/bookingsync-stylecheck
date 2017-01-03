# Change Log
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/) 
and this project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased]

##0.0.8

- add --display-cop-names options for cleaner output
- update Rubocop to recent version
- use DisabledByDefault: true and remove unnecessary config entries

## 0.0.7
- take TargetRubyVersion from .ruby-version file

## 0.0.6

- fix release timestamps
- run checks on this gem
- enable to run on non railties projects and other gems

## 0.0.5

- prefer alias_method
- enable vaious more cops
- add some comment cops, disable FrozenStringLiteralComment and InlineComment

## 0.0.4

- rake task that accepts custom commands to be passed to Rubocop
