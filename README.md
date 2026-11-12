# homebrew-tap

Homebrew casks for apps published from [felipefdl](https://github.com/felipefdl).

```sh
brew install --cask felipefdl/tap/working
```

Installing a cask by its full name trusts that cask. To trust every cask in this tap at once, run `brew trust --tap felipefdl/tap`.

| Cask | App |
| --- | --- |
| `working` | [Working](https://github.com/felipefdl/working), a native macOS Google Chat client |

Each app's release workflow rewrites its own file under `Casks/` when a release is published. Apps that update themselves declare `auto_updates true`, so `brew upgrade` leaves them to their built-in updater unless you pass `--greedy`.

Every push runs `brew style` and `brew audit --cask --strict --online` on the casks.
