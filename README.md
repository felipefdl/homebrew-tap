# homebrew-tap

Homebrew casks for apps published from [felipefdl](https://github.com/felipefdl).

```sh
brew tap felipefdl/tap
brew install --cask <app>
```

| Cask | App |
| --- | --- |
| `working` | [Working](https://github.com/felipefdl/working), a native macOS Google Chat client |

Each app's release workflow updates its own file under `Casks/` when a release is published. Apps that update themselves set `auto_updates true`, so `brew upgrade` leaves them to their built-in updater.
