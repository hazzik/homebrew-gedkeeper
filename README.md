# Homebrew GEDKeeper Tap

[![Update GEDKeeper Version](https://github.com/hazzik/homebrew-gedkeeper/actions/workflows/update.yml/badge.svg)](https://github.com/hazzik/homebrew-gedkeeper/actions/workflows/update.yml)

A [Homebrew](https://brew.sh/) tap for [GEDKeeper](https://github.com/Serg-Norseman/GEDKeeper), a comprehensive program for working with personal genealogical databases.

## Installation

### Prerequisites

Make sure you have [Homebrew](https://brew.sh/) installed on your Mac.

### Install GEDKeeper

You can install GEDKeeper in two ways:

#### Option 1: Cask (Recommended - Pre-built Binary)

```bash
brew install --cask hazzik/gedkeeper/gedkeeper3 --no-quarantine
```

**:warning: Warning:** The `--no-quarantine` flag is required because GEDKeeper is not code-signed by Apple. Without this flag, macOS Gatekeeper will prevent the application from running, displaying a security warning that the app "cannot be opened because the developer cannot be verified."

#### Option 2: Formula (Build from Source)

```bash
brew install hazzik/gedkeeper/gedkeeper3
```

This will build GEDKeeper from source code. This option:
- Requires `.NET` (automatically installed as a dependency)
- Takes longer as it compiles from source
- Always gets the latest development version
- May be more suitable for developers or users who prefer building from source

## Usage

After installation, you can launch GEDKeeper from:
- **Applications folder**: Look for "GEDKeeper3.app"
- **Spotlight**: Search for "GEDKeeper"
- **Terminal**: Use `open -a GEDKeeper3`

## Updating

To update GEDKeeper to the latest version:

**For cask installation:**
```bash
brew update
brew upgrade --cask gedkeeper3
```

**For formula installation:**
```bash
brew update
brew upgrade gedkeeper3
```

## Uninstalling

To remove GEDKeeper:

**For cask installation:**
```bash
brew uninstall --cask gedkeeper3
```

**For formula installation:**
```bash
brew uninstall gedkeeper3
```

To also remove this tap:

```bash
brew untap hazzik/gedkeeper
```

## About This Tap

This tap provides the macOS version of GEDKeeper in two formats:

- **Cask**: Pre-built application downloaded from the official [GEDKeeper releases](https://github.com/Serg-Norseman/GEDKeeper/releases) on GitHub
- **Formula**: Built from source code using the latest development version from the [GEDKeeper repository](https://github.com/Serg-Norseman/GEDKeeper)

### Current Versions

- **GEDKeeper Cask**: v3.12.0 (stable release)
- **GEDKeeper Formula**: v3.13.0-dev (development build)

## Links

- **GEDKeeper Homepage**: https://github.com/Serg-Norseman/GEDKeeper
- **Homebrew**: https://brew.sh/
- **How to create a tap**: https://docs.brew.sh/How-to-Create-and-Maintain-a-Tap

## Contributing

If you notice any issues with the cask or formula, or would like to contribute improvements:

1. Fork this repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## License

This homebrew tap repository is licensed under the [MIT License](LICENSE).

GEDKeeper itself is distributed under the [GNU General Public License v3.0](https://github.com/Serg-Norseman/GEDKeeper/blob/master/LICENSE). Please refer to the [official GEDKeeper repository](https://github.com/Serg-Norseman/GEDKeeper) for complete licensing information.
