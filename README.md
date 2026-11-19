![nvim screenshot](./images/screenshot-neovim.png)

# Kautsar's dotfiles

Forked from [craftzdog/dotfiles](https://github.com/craftzdog/dotfiles) by Takuya Matsuyama, with my own tweaks on top.

**Warning**: Don’t blindly use these settings unless you know what that entails. Use at your own risk!

## Changes from upstream

- **Vesper theme everywhere**: Ghostty (`Vesper`, background blur kept), Neovim ([vesper.nvim](https://github.com/datsfilipe/vesper.nvim), transparent), and herdr (`vesper`). The custom Neovim tabline uses the Vesper palette instead of Solarized Osaka.
- **oh-my-zsh style shortcuts in fish**:
  - [plugin-git](https://github.com/jhillyerd/plugin-git) for the oh-my-zsh git aliases (`gst`, `gco`, `gcm`, …)
  - `conf.d/abbr.fish`: abbreviations ported from the oh-my-zsh flutter, npm, opencode and vscode plugins (`flr`, `flget`, `npmrd`, `opc`, `vsc`, …)
- **Node via mise**: `node = "lts"` in the mise config.
- **Machine-specific settings** (paths, SDKs, API keys) live in `~/.config/fish/config-local.fish`, which chezmoi ignores, so they never enter this repo.

## Install

```sh
brew install chezmoi
chezmoi init --apply kxgcayh
```

`chezmoi init` asks for your name, email and GitHub username to fill in the git config. Applying also installs the `Brewfile`, global npm packages and fisher plugins.

To pull in upstream changes:

```sh
git remote add upstream https://github.com/craftzdog/dotfiles.git  # once
git fetch upstream && git merge upstream/master
```

## Contents

Managed with [chezmoi](https://www.chezmoi.io/).

- Neovim config
- [herdr](https://herdr.dev/) config (terminal workspace manager for AI agents)
- tmux config
- Ghostty config
- git and lazygit config
- fish config
- PowerShell config
- Homebrew, apt, Scoop and winget package lists

## Neovim setup

### Requirements

- Neovim >= **0.12** (plugins are managed with the built-in `vim.pack`)
- Git
- [lazygit](https://github.com/jesseduffield/lazygit) **_(optional)_**
- [tree-sitter CLI](https://github.com/tree-sitter/tree-sitter) and a **C** compiler for `nvim-treesitter`
- for the [snacks.nvim](https://github.com/folke/snacks.nvim) picker:
  - **live grep**: [ripgrep](https://github.com/BurntSushi/ripgrep)
  - **find files**: [fd](https://github.com/sharkdp/fd)
- a terminal that supports true color and _undercurl_, such as [Ghostty](https://ghostty.org/)
- [vesper.nvim](https://github.com/datsfilipe/vesper.nvim)

## Terminal setup

- [Ghostty](https://ghostty.org/) - Terminal emulator
- [herdr](https://herdr.dev/) - Workspace manager for running AI coding agents side by side, with tmux-style keybindings (prefix `ctrl+t`)
- [tmux](https://github.com/tmux/tmux) - Terminal multiplexer

### Fonts

Installed as Homebrew casks from the `Brewfile`:

- [PlemolJP](https://github.com/yuru7/PlemolJP) (`PlemolJP Console NF`) - A mix of IBM Plex Mono and IBM Plex Sans JP
- [BlexMono Nerd Font](https://github.com/ryanoasis/nerd-fonts)

## Shell setup (macOS & Linux)

- [Fish shell](https://fishshell.com/)
- [Fisher](https://github.com/jorgebucaran/fisher) - Plugin manager
- [Tide](https://github.com/IlanCosman/tide) - Shell theme
- [z for fish](https://github.com/jethrokuan/z) - Directory jumping
- [Eza](https://github.com/eza-community/eza) - `ls` replacement
- [ghq](https://github.com/x-motemen/ghq) - Local Git repository organizer
- [fzf](https://github.com/PatrickF1/fzf.fish) - Interactive filtering
- [plugin-git](https://github.com/jhillyerd/plugin-git) - oh-my-zsh style git aliases

## PowerShell setup (Windows)

- [Scoop](https://scoop.sh/) - A command-line installer
- [Git for Windows](https://gitforwindows.org/)
- [Oh My Posh](https://ohmyposh.dev/) - Prompt theme engine
- [Terminal Icons](https://github.com/devblackops/Terminal-Icons) - Folder and file icons
- [PSReadLine](https://docs.microsoft.com/en-us/powershell/module/psreadline/) - Cmdlets for customizing the editing environment, used for autocompletion
- [z](https://www.powershellgallery.com/packages/z) - Directory jumper
- [PSFzf](https://github.com/kelleyma49/PSFzf) - Fuzzy finder

## How to use

Takuya's video tutorials explain the original setup:

1. [My Neovim setup](https://www.youtube.com/watch?v=fFHlfbKVi30)
   - [Article version](https://www.devas.life/effective-neovim-setup-for-web-development-towards-2024/)
1. [My dev workflow using tmux and vim](https://www.youtube.com/watch?v=sSOfr2MtRU8&list=PLxQA0uNgQDCICMRwlOzWAZBPL05XBC_br&index=10)
1. [A productive command-line Git workflow for indie app developers](https://www.youtube.com/watch?v=qKpY7t5m35k&list=PLxQA0uNgQDCICMRwlOzWAZBPL05XBC_br&index=4)
   - [Blogpost](https://dev.to/craftzdog/a-productive-command-line-git-workflow-for-indie-app-developers-k7d)
1. [My Fish shell workflow for coding](https://www.youtube.com/watch?v=KKxhf50FIPI)
1. [How to set up PowerShell prompt with Oh My Posh on Windows 11](https://www.youtube.com/watch?v=5-aK2_WwrmM)

## Credits

Original dotfiles by Takuya Matsuyama ([craftzdog](https://github.com/craftzdog)):

- [@inkdrop_app on X](https://twitter.com/inkdrop_app)
- [Newsletters](https://www.devas.life/)
- [Inkdrop - Markdown note-taking app](https://www.inkdrop.app/)
