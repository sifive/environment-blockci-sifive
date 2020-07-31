# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]


## [0.5.0]

### Backwards Incompatible Changes
- The environment runner now only matches on specific versions of protobuf, verilator, and riscv-tools.
- Protobuf has been downgraded from 3.7.1 to 3.5.1 to match api-firrtl-sifive.
- The RISC-V GNU toolchain has been downgraded to SiFive's 2019.05 release to match freedom-metal.
- Verilator has been upgraded to 4.028 to match api-generator-sifive.


## [0.4.0]

### Backwards Incompatible Changes
- Bumped version of wake from 0.17.1 to 0.17.2, which contains some backwards incompatible changes to the language. See https://github.com/sifive/wake/releases/tag/v0.17.2 for details.


## [0.3.0]

### Backwards Incompatible Changes
- Bumped version of wake from 0.15.1 to 0.17.1, which contains backwards incompatible changes to the language. See https://github.com/sifive/wake/releases/tag/v0.16.0 and https://github.com/sifive/wake/releases/tag/v0.17.0 for the major changes.

[Unreleased]: https://github.com/sifive/environment-blockci-sifive/compare/0.5.0...HEAD
[0.5.0]: https://github.com/sifive/environment-blockci-sifive/compare/0.4.0...0.5.0
[0.4.0]: https://github.com/sifive/environment-blockci-sifive/compare/0.3.0...0.4.0
[0.3.0]: https://github.com/sifive/environment-blockci-sifive/compare/0.2.1...0.3.0
