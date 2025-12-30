# Homebrew Tap

This is a [Homebrew tap](https://docs.brew.sh/Taps) for my tools.

## env2op-cli

Push .env files to 1Password and pull them back.

This installs two commands:

- `env2op` - Push .env files to 1Password as Secure Notes
- `op2env` - Pull secrets from 1Password to generate .env files

**Requires:** [1Password CLI](https://1password.com/downloads/command-line/) (`brew install 1password-cli`)

### Install

```bash
brew tap tolgamorf/tap
brew install env2op-cli
```

Or in a single command:

```bash
brew install tolgamorf/tap/env2op-cli
```

### Install a specific version

```bash
brew install env2op-cli@0.1.3
```

See [available versions](https://github.com/tolgamorf/homebrew-tap/tree/main/Formula).

### Upgrade

```bash
brew upgrade env2op-cli
```

### Uninstall

```bash
brew uninstall env2op-cli
brew untap tolgamorf/tap
```

---

For more information, see the [env2op-cli repository](https://github.com/tolgamorf/env2op-cli).
