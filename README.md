# Homebrew GEDKeeper Tap

A [Homebrew](https://brew.sh/) tap for [GEDKeeper](https://github.com/Serg-Norseman/GEDKeeper), a comprehensive program for working with personal genealogical databases.

## Installation

### Prerequisites

Make sure you have [Homebrew](https://brew.sh/) installed on your Mac.

### Install GEDKeeper

```bash
brew install --cask hazzik/gedkeeper/gedkeeper3 --no-quarantine
```

**:warning: Warning:** The `--no-quarantine` flag is required because GEDKeeper is not code-signed by Apple. Without this flag, macOS Gatekeeper will prevent the application from running, displaying a security warning that the app "cannot be opened because the developer cannot be verified."

## Usage

After installation, you can launch GEDKeeper from:
- **Applications folder**: Look for "GEDKeeper3.app"
- **Spotlight**: Search for "GEDKeeper"
- **Terminal**: Use `open -a GEDKeeper3`

## Updating

To update GEDKeeper to the latest version:

```bash
brew update
brew upgrade --cask gedkeeper3
```

## Uninstalling

To remove GEDKeeper:

```bash
brew uninstall --cask gedkeeper3
```

To also remove this tap:

```bash
brew untap hazzik/gedkeeper
```

## About This Tap

This tap provides the macOS version of GEDKeeper as a Homebrew cask. The software is automatically downloaded from the official [GEDKeeper releases](https://github.com/Serg-Norseman/GEDKeeper/releases) on GitHub.

### Current Version

- **GEDKeeper**: v3.12.0

## Links

- **GEDKeeper Homepage**: https://github.com/Serg-Norseman/GEDKeeper
- **Homebrew**: https://brew.sh/
- **How to create a tap**: https://docs.brew.sh/How-to-Create-and-Maintain-a-Tap

## Contributing

If you notice any issues with the cask or would like to contribute improvements:

1. Fork this repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## License

This homebrew tap repository is licensed under the [MIT License](LICENSE).

GEDKeeper itself is distributed under the [GNU General Public License v3.0](https://github.com/Serg-Norseman/GEDKeeper/blob/master/LICENSE). Please refer to the [official GEDKeeper repository](https://github.com/Serg-Norseman/GEDKeeper) for complete licensing information.