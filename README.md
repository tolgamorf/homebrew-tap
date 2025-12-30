# Homebrew Tap

This is a [Homebrew tap](https://docs.brew.sh/Taps) for my tools.

## Installation

```bash
brew tap tolgamorf/tap
```

## Available Formulae

### env2op-cli

Push .env files to 1Password and pull them back.

```bash
brew install tolgamorf/tap/env2op-cli
```

This installs two commands:
- `env2op` - Push .env files to 1Password as Secure Notes
- `op2env` - Pull secrets from 1Password to generate .env files

**Requires:** [1Password CLI](https://1password.com/downloads/command-line/) (`brew install 1password-cli`)

For more information, see the [env2op-cli repository](https://github.com/tolgamorf/env2op-cli).
