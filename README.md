# homebrew-texa

Yet another shell text editor: **texa**, a small editor for the terminal, in the spirit of nano
and vim. Open a file, change it, save, quit.

```sh
brew install siriokds/texa/texa
texa notes.txt
```

The formula installs the program already built (macOS on Apple silicon for now; Linux will
follow). `texa --version` tells the version.

texa uses the engine of Microsoft Edit (MIT License); its notice is installed with the program
(`CREDITS.md`, in `$(brew --prefix)/share/doc/texa`).
