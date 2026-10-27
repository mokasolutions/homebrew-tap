# Moka Solutions Homebrew tap

```sh
brew install mokasolutions/tap/espresso-search
```

**[Espresso](https://espressoformac.com)**: instant file search for every disk on your Mac,
including the ones that aren't connected. macOS 14 Sonoma or later, Apple silicon and Intel.
The cask is called `espresso-search` because `espresso` is already another app in Homebrew.

Espresso updates itself, so `brew upgrade` skips it unless you add `--greedy`.
The cask also links the `espresso` command-line tool (an Espresso Pro feature) into Homebrew's
`bin`.

- User guide: https://docs.espressoformac.com
- Problems and ideas: [espresso-releases issues](https://github.com/mokasolutions/espresso-releases/issues)
- Support: support@mokasolutions.dev

## How the cask stays current

`.github/workflows/update.yml` runs every hour and right after each release. It reads
https://espressoformac.com/api/latest, the same newest stable version the website offers,
downloads that DMG and commits the new `version` and `sha256`. Nothing here is edited by hand.
