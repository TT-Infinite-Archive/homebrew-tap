# Toontown Infinite Homebrew tap

Homebrew packaging for the [Toontown Infinite Launcher](https://infinite.toontown.io).

## Install

```sh
brew install --cask tt-infinite-archive/tap/toontown-infinite
```

Or tap first, then install by the short name:

```sh
brew tap tt-infinite-archive/tap
brew install --cask toontown-infinite
```

Universal across Apple Silicon and Intel: Homebrew picks the `arm64` or `x64`
build to match the machine.

## Update

The launcher updates itself, so `brew upgrade` deliberately leaves an installed
copy alone (`auto_updates true`). To force Homebrew to re-install the newest
packaged build:

```sh
brew upgrade --cask --greedy toontown-infinite
```

## Uninstall

```sh
brew uninstall --cask toontown-infinite
```

Add `--zap` to also remove accounts, settings, and any downloaded game files
that still live in the default install location:

```sh
brew uninstall --cask --zap toontown-infinite
```

## Releasing

`.github/workflows/bump-cask.yml` watches
[`TT-Infinite-Archive/releases`](https://github.com/TT-Infinite-Archive/releases)
and opens a commit bumping `version` and both `sha256` values whenever a newer
release is published. It runs on a schedule, and the launcher's own release
workflow pokes it via `repository_dispatch` so a bump normally lands within a
minute of a release going public.

To bump by hand instead:

```sh
brew bump-cask-pr --version <new-version> tt-infinite-archive/tap/toontown-infinite
```
