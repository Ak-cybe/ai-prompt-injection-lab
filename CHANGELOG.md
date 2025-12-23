# Changelog

All notable changes to this project will be documented in this file.

## [1.1.0] - 2025-12-23

### Added
- **Setup Verification**: Added detailed steps in README to verify installation.
- **Troubleshooting Guide**: Added a table of common errors and solutions in README.
- **Payload Documentation**: Detailed table of all payloads in `payloads/` directory.
- **Real-World Impact Section**: Added context on why prompt injection matters for businesses.
- **Comprehensive Tests**: expanded `tests/test_prompt_injection.py` to cover:
  - Unicode normalization (debiting obfuscation).
  - HTML escaping.
  - Control character removal.
  - XML structure validation.
  - Output leakage detection.
- **Lab 4 Advanced Attacks**: Documented the missing advanced attacks lab.

### Changed
- **Dynamic CI Badge**: Replaced static badge with a live GitHub Actions status badge.
- **README Restructure**: Reorganized labs and defense strategies for better clarity.

### Fixed
- **Duplicate File cleanup**: Removed `run-tests-free - Copy.sh`.
- **Labs alignment**: Corrected README to accurately reflect the structure of `labs/lab4-advanced-attacks` and `labs/lab4-defense-hardening`.
- **Prerequisites updated**: Clarified Ollama requirement for local testing.

## [1.0.0] - 2025-12-11
- Initial release with core lab structure (Labs 1-3).
- Docker containerization support.
- Initial security defense implementations.
- OWASP LLM01 alignment.
