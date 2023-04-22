<h1 align="center">Lazyman Neovim Configuration Manager</h1>

<div align="center"><p>
    <a href="https://github.com/neovim/neovim">
      <img src="https://img.shields.io/badge/Neovim-0.9.0-blueviolet.svg?style=flat-square&logo=Neovim&color=90E59A&logoColor=white" alt="Neovim"/>
    </a>
    <a href="https://github.com/doctorfree/nvim-lazyman/pulse">
      <img src="https://img.shields.io/github/last-commit/doctorfree/nvim-lazyman" alt="Last commit"/>
    </a>
    <a href="https://github.com/doctorfree/nvim-lazyman/issues">
      <img src="https://img.shields.io/github/issues/doctorfree/nvim-lazyman.svg?style=flat-square&label=Issues&color=F05F40" alt="Github issues"/>
    </a>
    <a href="https://github.com/doctorfree/nvim-lazyman/actions/workflows/docker.yml">
      <img src="https://github.com/doctorfree/nvim-lazyman/actions/workflows/docker.yml/badge.svg" alt="CI Status"/>
    </a>
    <a href="https://github.com/doctorfree/nvim-lazyman/blob/main/LICENSE">
      <img src="https://img.shields.io/github/license/doctorfree/nvim-lazyman?style=flat-square&logo=MIT&label=License" alt="License"/>
    </a>
</p>

The Lazyman Neovim configuration management menu:

<p float="left">
  <img src="https://raw.githubusercontent.com/wiki/doctorfree/nvim-lazyman/screenshots/lazymenu.png" style="width:800px;height:600px;">
</p>

The nvims Neovim configuration fuzzy selector:

<p float="left">
  <img src="https://raw.githubusercontent.com/wiki/doctorfree/nvim-lazyman/screenshots/nvims.png" style="width:250px;height:400px;">
  <img src="https://raw.githubusercontent.com/wiki/doctorfree/nvim-lazyman/screenshots/nvims2.png" style="width:250px;height:400px;">
</p>

</div>

The Lazyman project can be used to install, initialize, and manage multiple
Neovim configurations. Over 20 popular Neovim configurations are supported.

Follow the [Installation instructions](#installation) to bootstrap Lazyman.
Once Lazyman is installed, execute the `lazyman` command to manage
Neovim configurations. The `lazyman` command is located in `~/.local/bin/lazyman`.

The `lazyman` command separates Neovim configurations into 4 categories:
`Base`, `Extra`, `Starter`, and `Custom`. The `Base` category consists of well
tested Neovim configurations, all of which provide significant value. The
`Extra` category includes additional Neovim configurations that provide
significant value but have not been thoroughly tested. The `Starter` category
includes the Neovim `Kickstart` configuration and the Neovim configurations
provided by the [nvim-starter project](https://github.com/VonHeikemen/nvim-starter).
The `Custom` category includes any additional Neovim configurations installed
and initialized with `lazyman` by the end-user using the `-C url` and
`-N nvimdir` options.

The Lazyman Neovim configuration categories:

| **Base**                                         |                                                      |                                                       | **Configs**                                   |
| ------------------------------------------------ | ---------------------------------------------------- | ----------------------------------------------------- | --------------------------------------------- |
| [AstroNvim](https://astronvim.com)               | [Ecovim](https://github.com/ecosse3/nvim)            | [Lazyman](https://github.com/doctorfree/nvim-lazyman) | [LazyVim](https://github.com/LazyVim/LazyVim) |
| [LunarVim](https://github.com/LunarVim/LunarVim) | [MagicVim](https://gitlab.com/GitMaster210/magicvim) | [NvChad](https://nvchad.com/)                         | [SpaceVim](https://spacevim.org)              |

| **Extra**                                              |                                                                           | **Configs**                                         |
| ------------------------------------------------------ | ------------------------------------------------------------------------- | --------------------------------------------------- |
| [Nv](https://github.com/appelgriebsch/Nv)              | [Knmac](https://github.com/knmac/.dotfiles/tree/master/nvim/.config/nvim) | [Fennel](https://github.com/jhchabran/nvim-config)  |
| [NvPak](https://github.com/Pakrohk-DotFiles/NvPak.git) | [Optixal](https://github.com/Optixal/neovim-init.vim)                     | [Vim Plug](https://github.com/doctorfree/nvim-plug) |
| [Heiker](https://github.com/VonHeikemen/dotfiles)      | [Roiz](https://github.com/MrRoiz/rnvim)                                | [Simple](https://github.com/anthdm/.nvim)           |

| **Starter**                                                         |                                                                                 |                                                                        | **Configs**                                                                    |
| ------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ---------------------------------------------------------------------- | ------------------------------------------------------------------------------ |
| [Kickstart](https://github.com/nvim-lua/kickstart.nvim)             | [Minimal](https://github.com/VonHeikemen/nvim-starter/tree/00-minimal)          | [StartBase](https://github.com/VonHeikemen/nvim-starter/tree/01-base)  | [Opinionated](https://github.com/VonHeikemen/nvim-starter/tree/02-opinionated) |
| [StartLsp](https://github.com/VonHeikemen/nvim-starter/tree/03-lsp) | [StartMason](https://github.com/VonHeikemen/nvim-starter/tree/04-lsp-installer) | [Modular](https://github.com/VonHeikemen/nvim-starter/tree/05-modular) |                                                                                |

In addition, Lazyman installs and initializes the Lazyman Neovim configuration,
a richly configured Neovim environment using Lua, Lazy, and Mason to support
highlighting, completion, diagnostics, and more for many programming languages.

The installation and initialization of Neovim configurations are placed in
separate directories and managed using the `NVIM_APPNAME` environment variable.

The `lazyman` command is installed as `~/.local/bin/lazyman` and can be used
to install, initialize, remove, and manage multiple Neovim configurations.

# Table of Contents

- [Requirements](#requirements)
- [Installation](#installation)
  - [Bootstrap](#bootstrap)
  - [Manual installation](#manual-installation)
    - [Neovim 0.9 and later](#neovim-09-and-later)
    - [Neovim 0.8 and earlier](#neovim-08-and-earlier)
- [Supported configurations](#supported-configurations)
  - [Base configurations](#base-configurations)
  - [Extra configurations](#extra-configurations)
  - [Starter configurations](#starter-configurations)
  - [Unsupported configurations](#unsupported-configurations)
- [Features](#features)
- [Usage](#usage)
  - [Supported plugin managers](#supported-plugin-managers)
  - [Updates](#updates)
  - [Lazyman manual](#lazyman-manual)
  - [Lazyman configuration](#lazyman-configuration)
  - [Lazyman Neovim Terminal](#lazyman-neovim-terminal)
- [Motivation](#motivation)
  - [Inspiration](#inspiration)
- [Notes](#notes)
  - [Lazy](#lazy)
  - [Mason](#mason)
  - [Packer](#packer)
  - [Plug](#plug)
  - [Health check](#health-check)
  - [Symbolic links](#symbolic-links)
  - [Shell initialization setup](#shell-initialization-setup)
  - [The nvims fuzzy selector](#the-nvims-fuzzy-selector)
  - [Using aliases](#using-aliases)
  - [Using lazyman to explore configurations](#using-lazyman-to-explore-configurations)
- [Removal](#removal)
- [Troubleshooting](#troubleshooting)
- [Appendix](#appendix)
  - [get_conf.lua](#get-configuration-script)
  - [lazyman.sh](#lazyman-source-code)
  - [install_neovim.sh](#install-neovim-and-tools)

## Requirements

The `lazyman` Neovim configuration manager requires Neovim 0.9. The `lazyman`
installation and initialization process checks for Neovim 0.9 and, if not
found, uses Homebrew to install it in the isolated Homebrew directory.

Lazyman requires a Unix or Linux operating system, Linux and macOS only,
and the Bash shell.

- Neovim 0.9 (automatically installed if not found)
- Unix/Linux/macOS
- Bash

## Installation

The Lazyman installation process consists of two steps.

Step 1, clone the Lazyman repository:

```bash
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/nvim-Lazyman
```

Step 2, initialize the Lazyman Neovim configuration:

```bash
$HOME/.config/nvim-Lazyman/lazyman.sh
```

These 2 steps perform the following:

1. Download the Lazyman Neovim configuration
1. Initialize the Lazyman Neovim configuration which:
   1. Installs Homebrew if not already installed
   1. Installs language servers and tools for coding diagnostics
   1. Installs the latest version of Neovim if not already installed
   1. Installs and initializes configured Neovim plugins

After the download and initialization are complete, execute the `lazyman`
command found in `~/.local/bin/lazyman`.

Lazyman uses [Homebrew](https://brew.sh) to install Neovim if there is not
already Neovim 0.9 or later installed and in the execution path.
In addition, Lazyman uses Homebrew to install Neovim dependencies,
language servers, and tools.

The installation of Homebrew, Neovim 0.9, language servers, and tools
ensures a proper runtime environment. To avoid the installation of
Homebrew, Neovim, language servers, and tools, execute `lazyman -Z`:

```bash
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/nvim-Lazyman
$HOME/.config/nvim-Lazyman/lazyman.sh -Z
```

Note that circumventing the Neovim installation means that Neovim 0.9 must
be installed in some other manner. Also, language servers and tools
required by some Neovim configurations may not be present. However, some
may prefer to handle the installation of Neovim 0.9, language servers,
and tools on their own. In this case, the `-Z` option is your friend.

If, after initializing Lazyman with `lazyman -Z`, you wish to let Lazyman
install Neovim 0.9, language servers and tools, then issue the command
`lazyman -I` or choose the `Install Tools` lazyman menu option.

See the [Appendix section](#appendix) below to examine the
[lazyman command](lazyman.sh) and associated
[Neovim install script](scripts/neovim.sh).

### Bootstrap

To bootstrap the Lazyman Neovim configuration manager, the `lazyman.sh` script
must be downloaded and executed. The download can be performed with `git`,
`curl`, `wget`, or a copy/paste.

The recommended bootstrap procedure is with `git`:

Clone the repository with `git` and execute `lazyman.sh`:

```bash
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/nvim-Lazyman
$HOME/.config/nvim-Lazyman/lazyman.sh
```

Alternatively, download the `lazyman.sh` script and execute it.
For example, with `curl`:

```bash
curl -fsS https://raw.githubusercontent.com/doctorfree/nvim-lazyman/main/lazyman.sh > /tmp/lazyman.sh
chmod 755 /tmp/lazyman.sh
/tmp/lazyman.sh
rm -f /tmp/lazyman.sh
```

Once the `lazyman.sh` script has been downloaded and executed, subsequent
Lazyman operations can be performed with the `lazyman` command found in
`~/.local/bin/lazyman`. The manual page can be viewed with `man lazyman`.

See the [Appendix section](#appendix) below to examine the
[lazyman command](lazyman.sh) and associated
[Neovim install script](scripts/neovim.sh).

If you do not wish to use this automated installation and initialization
method then manual installation and initialization is described below.
Manual installation and initialization may be preferred by those who
do not wish to upgrade Neovim to the latest version or by those who
do not wish to use Homebrew.

Neovim 0.8 and earlier users, see the [Neovim 0.8](#neovim-08-and-earlier)
section below for manual installation and initialization of `nvim-Lazyman`.

Neovim 0.9 and later users, see the [Neovim 0.9](#neovim-09-and-later)
section below for manual installation and initialization of `nvim-Lazyman`.

Neovim 0.9 and later users can use the `NVIM_APPNAME` environment variable
to control where Neovim looks for its configuration.

### Manual installation

If you do not wish to use the automated installation and initialization
provided by the `lazyman.sh` script, manual installation and initialization
can be performed. Check the version of the installed Neovim with:

```bash
nvim --version
```

Follow the manual installation procedure for your version of Neovim.
Manual installation should be accompanied by a manual upgrade of Neovim
and installation of desired language servers and tools. You're on
your own but you can always just run `lazyman -I` to perform an
automated install and upgrade.

#### Neovim 0.9 and later

In Neovim 0.9 and later there is a new feature enabling control of the
Neovim configuration location through the `NVIM_APPNAME` environment
variable. For example, `export NVIM_APPNAME="nvim-Lazyman"` in your shell
would make `nvim` look for its configuration in `~/.config/nvim-Lazyman`
rather than `~/.config/nvim`. This new feature can be used to easily
switch between Neovim configurations.

If you wish to use this repository in conjunction with a setup utilizing the
`NVIM_APPNAME` feature then the manual installation process can be performed by:

- Backup any pre-existing `nvim-Lazyman` config folder

```bash
[ -d $HOME/.config/nvim-Lazyman ] && {
  echo "Backing up existing nvim-Lazyman config as $HOME/.config/nvim-Lazyman-bak$$"
  mv $HOME/.config/nvim-Lazyman $HOME/.config/nvim-Lazyman-bak$$
}
```

- Clone the `nvim-Lazyman` Neovim configuration repository and initialize Neovim

```bash
echo "Cloning nvim-Lazyman configuration into $HOME/.config/nvim-Lazyman"
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/nvim-Lazyman
export NVIM_APPNAME="nvim-Lazyman"
nvim --headless "+Lazy! sync" +qa
nvim
```

#### Neovim 0.8 and earlier

**[Note:]** Lazyman bootstrap will install the latest version of
Neovim even if an older version is already installed. A manual install
of Lazyman will not upgrade Neovim. Neovim 0.8 and earlier does not
support some of the features Lazyman provides.

Users of Neovim 0.8 and earlier can manually install and initialize
`nvim-Lazyman` following these instructions:

- Backup any existing Neovim configuration, state, and installed plugins

```bash
[ -d $HOME/.config/nvim ] && {
  echo "Backing up Neovim config as $HOME/.config/nvim-bak$$"
  mv $HOME/.config/nvim $HOME/.config/nvim-bak$$
}
[ -d $HOME/.local/state/nvim ] && {
  echo "Backing up Neovim state as $HOME/.local/state/nvim-bak$$"
  mv $HOME/.local/state/nvim $HOME/.local/state/nvim-bak$$
}
[ -d $HOME/.local/share/nvim ] && {
  echo "Backing up Neovim installed plugins as $HOME/.local/share/nvim-bak$$"
  mv $HOME/.local/share/nvim $HOME/.local/share/nvim-bak$$
}
```

- Clone the `nvim-Lazyman` Neovim configuration repository and initialize Neovim

```bash
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/nvim
nvim --headless "+Lazy! sync" +qa
nvim
```

## Supported configurations

After installing and initializing `lazyman`, additional Neovim configurations
can be installed and initialized using the `lazyman` command. Over 20
excellent Neovim configurations are supported. Additional Neovim
configurations can be installed using the `-C url` and `-N nvimdir` options.

All of the supported Lazyman Neovim configuration can be managed using
the `lazyman` command interactive menu interface. The `lazyman` menu is
presented by invoking `lazyman` without arguments after the initial
bootstrap process is complete. Lazyman Neovim configurations can
also be managed with `lazyman` command line operations.

### Base configurations

Currently the following "Base" Neovim configurations are supported:

- [nvim-Lazyman](https://github.com/doctorfree/nvim-lazyman)
  - See the [Installation section](#installation) above
  - Install and initialize with `lazyman -i`
- [AstroNvim](https://astronvim.com)
  - Install and initialize with `lazyman -a`
  - An example [AstroNvim community]() plugins configuration is added
- [Ecovim](https://github.com/ecosse3/nvim)
  - Install and initialize with `lazyman -e`
  - Tailored for frontend development with React and Vue.js
- [LazyVim](https://github.com/LazyVim/LazyVim)
  - The [LazyVim starter](https://github.com/LazyVim/starter) configuration
  - Install and initialize with `lazyman -l`
- [LunarVim](https://github.com/LunarVim/LunarVim)
  - Installs LunarVim plus the [IfCodingWereNatural custom user config](https://youtu.be/Qf9gfx7gWEY)
  - Install and initialize with `lazyman -v`
- [MagicVim](https://gitlab.com/GitMaster210/magicvim)
  - Uses Packer plugin manager, installs in `~/.config/nvim-MagicVim`
  - Install and initialize with `lazyman -m`
- [NvChad](https://nvchad.com)
  - The [NvChad example](https://github.com/NvChad/example_config) configuration
  - Install and initialize with `lazyman -c`
- [SpaceVim](https://spacevim.org)
  - Does not use the SpaceVim installer script, installs in `~/.config/nvim-SpaceVim`
  - Install and initialize with `lazyman -s`

### Extra configurations

In addition to the base Neovim configurations listed above, `lazyman` can
install and initialize several "Extra" Neovim configurations.

All of the 'Extra' configurations can be installed and initialized with
the command `lazyman -W`. Individual 'Extra' configurations can be
installed with the `-w conf` option.

- [Nv](https://github.com/appelgriebsch/Nv)
  - Install and initialize with `lazyman -w Nv`
- [Knmac](https://github.com/knmac/.dotfiles)
  - Research Scientist at Amazon
  - See the [Knmac Neovim Config Cheat Sheet](https://github.com/knmac/.dotfiles/blob/master/cheatsheets/nvim_cheatsheet.md)
  - Install and initialize with `lazyman -w Knmac`
- [Fennel](https://github.com/jhchabran/nvim-config)
  - An opinionated configuration reminiscent of Doom-Emacs, written in Fennel
  - Install and initialize with `lazyman -w Fennel`
- [NvPak](https://github.com/Pakrohk-DotFiles/NvPak.git)
  - PaK in Farsi means pure, something that is in its purest form
  - Install and initialize with `lazyman -w NvPak`
- [Optixal](https://github.com/Optixal/neovim-init.vim)
  - Hybrid Neovim config for developers with a functional yet aesthetic experience
  - Install and initialize with `lazyman -w Optixal`
- [Vim Plug](https://github.com/doctorfree/nvim-plug)
  - Older vim-plug based configuration of the author
  - Included as an example of vim-plug support in lazyman
  - Install and initialize with `lazyman -w Plug`
- [Heiker](https://github.com/VonHeikemen/dotfiles)
  - Neovim config of Heiker Curiel, author of [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim)
  - Install and initialize with `lazyman -w Heiker`
- [Roiz](https://github.com/MrRoiz/rnvim)
  - Just a random Neovim config found on Github, works well
  - Install and initialize with `lazyman -w Roiz`
- [Simple](https://github.com/anthdm/.nvim)
  - A remarkably effective Neovim configuration in only one small file
  - The author's [video description of this config](https://youtu.be/AzhSnM0uHvM)
  - Install and initialize with `lazyman -w Simple`

### Starter configurations

The 'Starter' Neovim configurations include `Kickstart` and those provided by
[VonHeikemen](https://github.com/VonHeikemen), the author of
[LSP Zero](https://github.com/VonHeikemen/lsp-zero.nvim).

All of the 'Starter' configurations can be installed and initialized with
the command `lazyman -X`. Individual 'Starter' configurations can be
installed with the `-x conf` option.

- [Kickstart](https://github.com/nvim-lua/kickstart.nvim)
  - Install and initialize with `lazyman -k`
- [Minimal](https://github.com/VonHeikemen/nvim-starter/tree/00-minimal)
  - Small configuration without third party plugins
  - Install and initialize with `lazyman -x Minimal`
- [StartBase](https://github.com/VonHeikemen/nvim-starter/tree/01-base)
  - Small configuration that includes a plugin manager
  - Install and initialize with `lazyman -x StartBase`
- [Opinionated](https://github.com/VonHeikemen/nvim-starter/tree/02-opinionated)
  - Includes a combination of popular plugins
  - Install and initialize with `lazyman -x Opinion`
- [StartLsp](https://github.com/VonHeikemen/nvim-starter/tree/03-lsp)
  - Configures the built-in LSP client with autocompletion, based on `Opinionated`
  - Install and initialize with `lazyman -x StartLsp`
- [StartMason](https://github.com/VonHeikemen/nvim-starter/tree/04-lsp-installer)
  - Same as `StartLsp` but uses [mason.nvim](https://github.com/williamboman/mason.nvim) to install language servers
  - Install and initialize with `lazyman -x StartMason`
- [Modular](https://github.com/VonHeikemen/nvim-starter/tree/05-modular)
  - Same as `StartMason` but everything is split in modules
  - Install and initialize with `lazyman -x Modular`

### Unsupported configurations

To install and initialize a Neovim configuration not supported out-of-the-box
by Lazyman, use the `-C url` and `-N nvimdir` options to `lazyman`. After the
installation and initialization completes, set the `NVIM_APPNAME`
environment variable to use the newly created Neovim configuration:

```bash
export NVIM_APPNAME="<nvimdir>"
```

Where `<nvimdir>` is the argument provided to `-N` above.

For example, to install and initialize the Lazy based Neovim configuration
hosted at <https://github.com/appelgriebsch/Nv> and place it in `~/.config/nvim-Nv`,
execute the command:

```bash
lazyman -C https://github.com/appelgriebsch/Nv -N nvim-Nv
export NVIM_APPNAME="nvim-Nv"
nvim
```

Sometimes people place their Neovim configuration in a repository subdirectory
along with other configurations in a `dotfiles` repo. To retrieve only the
Neovim configuration subdirectory in such a repository, use the `-b branch`
and `-D subdir` arguments to `lazyman` along with `-C url` and `-N nvimdir`.
If no `-b branch` is provided then the default git branch is assumed to be
`master`. For example, to install and initialize the Neovim configuration
hosted at <https://github.com/alanRizzo/dot-files> in the subdirectory `nvim`
with default branch `main`, place it in `~/.config/nvim-AlanVim`, and
initialize it with Packer:

```bash
lazyman -b main -C https://github.com/alanRizzo/dot-files -D nvim -N nvim-AlanVim -P
```

Unsupported Neovim configurations can be installed and initialized in this
manner but there are often errors and issues such as an initialization
process that Lazyman does not yet support. However, you may find it useful
or interesting to explore, resolve errors and issues, and contribute to the
ever expanding set of Lazyman supported Neovim configurations.

Feel free to open an issue at
<https://github.com/doctorfree/nvim-lazyman/issues> to help tackle any problems
installing or initializing Neovim configurations with Lazyman.

## Features

- `lazyman` command to easily install, initialize, manage, and explore multiple Neovim configurations
- support for Lazy, Packer, and vim-plug plugin managers
- automated installation of dependencies, tools, language servers, and Neovim 0.9
- richly configured `nvim-Lazyman` Neovim configuration
- interactive menu interface for ease of management
- vimdoc help for `nvim-Lazyman` with `:h nvim-Lazyman`

See the [Usage](#usage) section below for details on `lazyman` command usage.

### General ⚙️

![](https://raw.githubusercontent.com/wiki/doctorfree/nvim-lazyman/screenshots/alpha.png)

- Package management and plugin configuration via [lazy.nvim](https://github.com/folke/lazy.nvim)
- Easily configure theme, active plugins, and their configuration via [configuration.lua](lua/configuration.lua)
- Preconfigured themes: [catppuccin](https://github.com/catppuccin/nvim), [tokyonight](https://github.com/folke/tokyonight.nvim), [nightfox](https://github.com/EdenEast/nightfox.nvim), [tundra](https://github.com/sam4llis/nvim-tundra), [dracula](https://github.com/Mofiqul/dracula.nvim), [kanagawa](https://github.com/rebelot/kanagawa.nvim), [onedarkpro](https://github.com/olimorris/onedarkpro.nvim), [everforest](https://github.com/neanias/everforest-nvim), [monokai-pro](https://github.com/loctvl842/monokai-pro.nvim)
  - Keymap to toggle transparency for several color schemes (`,ut`)
- Auto-configure ChatGPT (GPT-4) if `OPENAI_API_KEY` is found in the environment using [ChatGPT.nvim](https://github.com/jackMort/ChatGPT.nvim)
  - Uses ChatGPT prompts from [Awesome ChatGPT Prompts](https://github.com/f/awesome-chatgpt-prompts)
- Mnemonic keyboard mappings inspired by [Spacemacs](https://www.spacemacs.org/) via [which-key.nvim](https://github.com/folke/which-key.nvim); no more than three keystrokes for each keybinding
- Replace the UI for messages, cmdline and popup menu via [noice.nvim](https://github.com/folke/noice.nvim)
- Fully featured status line via [lualine](https://github.com/nvim-lualine/lualine.nvim) and [tabline](https://github.com/kdheepak/tabline.nvim)
- Terminal integration via [nvim-toggleterm.lua](https://github.com/akinsho/nvim-toggleterm.lua)
- Terminal management via [terminal.nvim](https://github.com/rebelot/terminal.nvim)
  - Preconfigured Neovim terminal execution of `lazyman` command (`<leader>lm`)
  - Preconfigured Neovim terminal execution of `asciiville` command (`<leader>A`)
  - Preconfigured Neovim terminal execution of `htop` command (`<leader>H`)
- Fancy notifications via [nvim-notify](https://github.com/rcarriga/nvim-notify)
- Code diagnostics via [LSP](https://github.com/neovim/nvim-lspconfig)
- Dashboard via [alpha.nvim](https://github.com/goolord/alpha-nvim) with recent files and quick links
- Neovim games for fun and learning ([Sudoku](https://github.com/jim-fx/sudoku.nvim), [Blackjack](https://github.com/alanfortlink/blackjack.nvim), [vim-be-good](https://github.com/ThePrimeagen/vim-be-good) practice basic movements)
- Github actions to publish docker image on Docker Hub, check spelling/syntax, and auto-generate vim help doc (see `.github/workflows/*.yml`)
- Over 90 plugins
- Fast startup < 70 ms 🚀

### Navigation 🧭

- [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) for all your search needs
- Project management with [Project.nvim](https://github.com/ahmedkhalf/project.nvim)
- File tree navigation/manipulation via [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- Better Tmux navigation with your home row via [Navigator.nvim](https://github.com/numToStr/Navigator.nvim)
- Convenient jumping through windows with [nvim-window-picker](https://gitlab.com/s1n7ax/nvim-window-picker)

### Coding 🖥️

![](https://raw.githubusercontent.com/wiki/doctorfree/nvim-lazyman/screenshots/diagnostics.png)

- Auto completion powered by [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- Built-in LSP configured via [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig), [mason](https://github.com/williamboman/mason.nvim), and [mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim)
- Debugging for Go and Python via [nvim-dap](https://github.com/mfussenegger/nvim-dap) and friends
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) and [Tresitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects) for your syntax needs
- Auto formatting via [null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)
- Excellent Go support via LSP and [go.nvim](https://github.com/ray-x/go.nvim) including sensible keybindings
- Always know where you are in your code via [nvim-navic](https://github.com/SmiteshP/nvim-navic)
- Git integration via [Neogit](https://github.com/TimUntersberger/neogit) and [gitsigns](https://github.com/lewis6991/gitsigns.nvim)
- Outlining symbols with [symbols-outline.nvim](https://github.com/simrat39/symbols-outline.nvim)
- Snippets provided by [Luasnip](https://github.com/L3MON4D3/LuaSnip) and [friendly snippets](https://github.com/rafamadriz/friendly-snippets) with autocompletion

## Usage

The [lazyman.sh](lazyman.sh) script is located in `~/.config/nvim-Lazyman`.
It installs itself as `$HOME/.local/bin/lazyman`. If `$HOME/.local/bin` is
in your execution `PATH` then `lazyman` can be executed from the command
line as simply `lazyman`. The manual page can be viewed with `man lazyman`.
Within Neovim the `nvim-Lazyman` help doc can be viewed with `:h nvim-Lazyman`.

The `lazyman` command can be used to install and initialize multiple Neovim
configurations. For example, to install and initialize the LazyVim starter
configuration execute the command `lazyman -l`. To install and initialize
all supported Lazyman Neovim configurations execute `lazyman -A`.

After installing and initializing Neovim configurations with `lazyman`,
easily explore various configurations with the `lazyman -E <config> …`
command. See the
[Using lazyman to explore configurations](#using-lazyman-to-explore-configurations)
section below for details.

To remove a Lazyman Neovim configuration execute `lazyman -r -N <nvimdir>`.
To remove the configuration and all its backups, `lazyman -R -N <nvimdir>`.
To remove all installed Lazyman Neovim configurations and their backups
without being prompted to proceed, execute `lazyman -A -R -y`.

<details><summary>View the lazyman usage message</summary>

```
Usage: lazyman [-A] [-a] [-b branch] [-c] [-d] [-e] [-E config]
       [-i] [-k] [-l] [-m] [-s] [-S] [-v] [-n] [-p] [-P] [-q]
       [-I] [-L cmd] [-rR] [-C url] [-D subdir] [-N nvimdir]
       [-U] [-w conf] [-W] [-x conf] [-X] [-y] [-z] [-Z] [-u]
Where:
    -A indicates install all supported Neovim configurations
    -a indicates install and initialize AstroNvim Neovim configuration
    -b 'branch' specifies an nvim-Lazyman git branch to checkout
    -c indicates install and initialize NvChad Neovim configuration
    -d indicates debug mode
    -e indicates install and initialize Ecovim Neovim configuration
    -E 'config' execute 'nvim' with 'config' Neovim configuration
       'config' can be one of:
           'lazyman', 'astronvim', 'kickstart', 'magicvim',
           'ecovim', 'nvchad', 'lazyvim', 'lunarvim', 'spacevim'
       or any Neovim configuration directory in '~/.config'
           (e.g. 'lazyman -E lazyvim foo.lua')
    -i indicates install and initialize Lazyman Neovim configuration
    -k indicates install and initialize Kickstart Neovim configuration
    -l indicates install and initialize LazyVim Neovim configuration
    -m indicates install and initialize MagicVim Neovim configuration
    -s indicates install and initialize SpaceVim Neovim configuration
    -v indicates install and initialize LunarVim Neovim configuration
    -S indicates show Neovim configuration fuzzy selector menu
    -n indicates dry run, don't actually do anything, just printf's
    -p indicates use vim-plug rather than Lazy to initialize
    -P indicates use Packer rather than Lazy to initialize
    -q indicates quiet install
    -I indicates install language servers and tools for coding diagnostics
    -L 'cmd' specifies a Lazy command to run in the selected configuration
    -r indicates remove the previously installed configuration
    -R indicates remove previously installed configuration and backups
    -C 'url' specifies a URL to a Neovim configuration git repository
    -N 'nvimdir' specifies the folder name to use for the config given by -C
    -U indicates update an existing configuration
    -w 'conf' indicates install and initialize Extra 'conf' config
       'conf' can be one of:
           'Knmac', 'Roiz', 'Fennel', 'Nv', 'NvPak',
           'Optixal', 'Plug', 'Simple', or 'Heiker'
    -W indicates install and initialize all 'Extra' Neovim configurations
    -x 'conf' indicates install and initialize nvim-starter 'conf' config
       'conf' can be one of:
           'Minimal', 'Base', 'Opinion', 'Lsp', 'Mason', or 'Modular'
    -X indicates install and initialize all nvim-starter configs
    -y indicates do not prompt, answer 'yes' to any prompt
    -z indicates do not run nvim after initialization
    -Z indicates do not install Homebrew, Neovim, or any other tools
    -u displays this usage message and exits
Commands act on NVIM_APPNAME, override with '-N nvimdir' or '-A'
Without arguments lazyman installs and initializes nvim-Lazyman
or, if initialized, an interactive menu system is displayed.
```

</details>

### Supported plugin managers

Lazyman currently supports the following Neovim plugin managers:

- [Lazy](https://github.com/folke/lazy.nvim) (lazy.nvim)
- [Packer](https://github.com/wbthomason/packer.nvim) (packer.nvim)
- [Plug](https://github.com/junegunn/vim-plug) (vim-plug)

The SpaceVim bundled plugin manager, **dein**, is supported only for the
SpaceVim install and initialization but Neovim configurations preconfigured
to use the **dein** plugin manager may install and initialize successfully.

Neovim configurations using other plugin managers will likely fail to cleanly
install and initialize using `lazyman`. Support for additional plugin managers
is not currently planned but if you have a need for this feature open an issue.

To install and initialize a Neovim configuration that uses the **Packer** plugin
manager invoke `lazyman` with the `-P` flag. See the [Packer](#packer) section below.

To install and initialize a Neovim configuration that uses the **Plug** plugin
manager invoke `lazyman` with the `-p` flag. See the [Plug](#plug) section below.

### Updates

To update a previously installed Lazyman Neovim configuration execute
`lazyman -U -N <nvimdir>` to update the Neovim configuration in
`~/.config/<nvimdir>`, `lazyman -U -A` to update all configurations,
or `lazyman -U` to update the `nvim-Lazyman` configuration. Updates
retrieve any newly modified files from the respective Github repository
while preserving local modifications. Note, if a file has been modified
both locally and in the repository then it will not be updated and retain
only local modifications.

### Lazyman manual

The `lazyman` bootstrap process installs a `lazyman` manual page in
`~/.local/share/man/man1/lazyman.1`. This man page includes a synopsis
of the `lazyman` command line options, a brief description of its use,
a description of each command line option, and several example invocations.

The `lazyman` manual page can be viewed with `man lazyman`.

Lazyman Neovim help can be viewed inside Neovim with `:h nvim-Lazyman`.

### Lazyman configuration

The `nvim-Lazyman` Neovim configuration includes a top-level configuration file,
`~/.config/nvim-Lazyman/lua/configuration.lua`. This file can be use to enable,
disable, and configure `nvim-Lazyman` components. For example, here is where you
would configure whether `neo-tree` or `nvim-tree` is enabled as a file explorer.
Or, disable the tabline, disable the statusline, set the colorscheme, theme, and
theme style. The `configuration.lua` file is intended to serve as a quick and
easy way to re-configure the `nvim-Lazyman` Neovim configuration but you can still
dig down into the `options.lua`, `keymaps.lua`, `autocmds.lua` and more.

#### Configuration sections

The `lua/configuration.lua` configuration file contains the following sections
with settings briefly described here:

##### Theme configuration

The `nvim-Lazyman` Neovim configuration includes pre-configured support for several
themes including support for statusline and tabline theme coordination. The active
theme and colorscheme is selected in `configuration.lua` by setting `conf.theme`.
For themes that support different styles, the theme style is selected by setting
`conf.theme_style`. Theme transparency can be enabled with `conf.enable_transparent`.
For example, to use the `kanagawa` theme with `dragon` style and transparency
disabled, set:

```
conf.theme = "kanagawa"
conf.theme_style = "dragon"
conf.enable_transparent = false
```

###### Supported themes

- [catppuccin](https://github.com/catppuccin/nvim.git)
- [dracula](https://github.com/Mofiqul/dracula.nvim)
- [everforest](https://github.com/neanias/everforest-nvim.git)
- [kanagawa](https://github.com/rebelot/kanagawa.nvim.git)
- [nightfox](https://github.com/EdenEast/nightfox.nvim.git)
- [monokai-pro](https://github.com/loctvl842/monokai-pro.nvim)
- [onedarkpro](https://github.com/olimorris/onedarkpro.nvim.git)
- [tokyonight](https://github.com/folke/tokyonight.nvim.git)
- [tundra](https://github.com/sam4llis/nvim-tundra.git)

A configuration file for each theme is in `lua/themes/` and lualine theme
configuration for each theme and its styles in `lua/themes/lualine`.

Use `<F8>` to step through themes.

Available styles are:

- kanagawa
  - wave
  - dragon
  - lotus
- tokyonight
  - night
  - storm
  - day
  - moon
- onedarkpro
  - onedark
  - onelight
  - onedark_vivid
  - onedark_dark
- catppuccin
  - latte
  - frappe
  - macchiato
  - mocha
  - custom
- dracula
  - blood
  - magic
  - soft
  - default
- nightfox
  - carbonfox
  - dawnfox
  - dayfox
  - duskfox
  - nightfox
  - nordfox
  - terafox
- monokai-pro
  - classic
  - octagon
  - pro
  - machine
  - ristretto
  - spectrum

##### Plugin configuration

Several Neovim plugins in the `nvim-Lazyman` configuration can be optionally
installed or replaced by another plugin with similar functionality. The plugins
that are configurable in this way in `configuration.lua` are briefly described
below along with their default settings:

- Neovim session manager to use, either persistence or possession
  - `conf.session_manager = "possession"`
- Neo-tree or nvim-tree, false will enable nvim-tree
  - `conf.enable_neotree = true`
- Replace the UI for messages, cmdline and the popup menu
  - `conf.enable_noice = true`
- Enable ChatGPT (set `OPENAI_API_KEY` environment variable)
  - `conf.enable_chatgpt = false`
- Enable the newer rainbow treesitter delimiter highlighting
  - `conf.enable_rainbow2 = true`
- Enable the wilder plugin
  - `conf.enable_wilder = false`
- The statusline (lualine) and tabline can each be enabled or disabled
  - `conf.enable_statusline = true`
  - `conf.enable_tabline = true`
- The winbar with navic location via lspconfig if available
  - `conf.enable_winbar = true`
- Enable the rebelot/terminal.nvim terminal plugin
  - `conf.enable_terminal = true`
- Enable playing games inside Neovim!
  - `conf.enable_games = true`
- Enable the Alpha dashboard
  - `conf.enable_alpha = true`
- Enable the Neovim bookmarks plugin (<https://github.com/ldelossa/nvim-ide>)
  - `conf.enable_bookmarks = false`
- Enable the Neovim IDE plugin (<https://github.com/ldelossa/nvim-ide>)
  - `conf.enable_ide = false`
- Enable Navigator
  - `conf.enable_navigator = true`
- Enable Project manager
  - `conf.enable_project = true`
- Enable smooth scrolling with the `neoscroll` plugin
  - `conf.enable_smooth_scrolling = true`
- Enable window picker
  - `conf.enable_picker = true`
- Show diagnostics, can be one of "none", "icons", "popup". Default is "popup"
  - `conf.show_diagnostics = "icons"`
- Enable semantic highlighting
  - `conf.enable_semantic_highlighting = true`
- Convert semantic highlights to treesitter highlights
  - `conf.convert_semantic_highlighting = true`

Additional plugin configuration and options are available in `configuration.lua`.

<details><summary>View the default configuration.lua</summary>

```lua
local conf = {}

-- THEME CONFIGURATION
-- Available themes:
--   nightfox, tokyonight, dracula, kanagawa, catppuccin,
--   tundra, onedarkpro, everforest, monokai-pro
-- A configuration file for each theme is in lua/themes/
-- Use <F8> to step through themes
conf.theme = "tokyonight"
-- Available styles are:
--   kanagawa:    wave, dragon, lotus
--   tokyonight:  night, storm, day, moon
--   onedarkpro:  onedark, onelight, onedark_vivid, onedark_dark
--   catppuccin:  latte, frappe, macchiato, mocha, custom
--   dracula:     blood, magic, soft, default
--   nightfox:    carbonfox, dawnfox, dayfox, duskfox, nightfox, nordfox, terafox
--   monokai-pro: classic, octagon, pro, machine, ristretto, spectrum
conf.theme_style = "moon"
-- enable transparency if the theme supports it
conf.enable_transparent = true

-- GLOBAL OPTIONS CONFIGURATION
-- Some prefer space as the map leader, but why
conf.mapleader = ","
conf.maplocalleader = ","
-- Toggle global status line
conf.global_statusline = true
-- set numbered lines
conf.number = false
-- enable mouse see :h mouse
conf.mouse = "nv"
-- set relative numbered lines
conf.relative_number = false
-- always show tabs; 0 never, 1 only if at least two tab pages, 2 always
-- see enable_tabline below to disable or enable the tabline
conf.showtabline = 2
-- enable or disable listchars
conf.list = true
-- which list chars to show
conf.listchars = {
  eol = "⤶",
  tab = ">.",
  trail = "~",
  extends = "◀",
  precedes = "▶",
}
-- use rg instead of grep
conf.grepprg = "rg --hidden --vimgrep --smart-case --"

-- ENABLE/DISABLE/SELECT PLUGINS
-- neovim session manager to use, either persistence or possession
conf.session_manager = "possession"
-- neo-tree or nvim-tree, false will enable nvim-tree
conf.enable_neotree = true
-- Replace the UI for messages, cmdline and the popupmenu
conf.enable_noice = true
-- Enable ChatGPT (set OPENAI_API_KEY environment variable)
conf.enable_chatgpt = false
-- Enable the newer rainbow treesitter delimiter highlighting
conf.enable_rainbow2 = true
-- Enable fancy lualine components
conf.enable_fancy = true
-- Enable the wilder plugin
conf.enable_wilder = false
-- The statusline (lualine), tabline, and winbar can each be enabled or disabled
-- Enable statusline (lualine)
conf.enable_statusline = true
-- Enable tabline
conf.enable_tabline = true
-- Enable winbar with navic location via lspconfig
conf.enable_winbar = true
-- Enable rebelot/terminal.nvim
conf.enable_terminal = true
-- Enable playing games inside Neovim!
conf.enable_games = true
-- Enable the Alpha dashboard
conf.enable_alpha = true
-- enable the Neovim bookmarks plugin (https://github.com/ldelossa/nvim-ide)
conf.enable_bookmarks = false
-- enable the Neovim IDE plugin (https://github.com/ldelossa/nvim-ide)
conf.enable_ide = false
-- Enable Navigator
conf.enable_navigator = true
-- Enable Project manager
conf.enable_project = true
-- Enable window picker
conf.enable_picker = true
-- Enable smooth scrolling with neoscroll plugin
conf.enable_smooth_scrolling = true

-- PLUGINS CONFIGURATION
-- media backend, one of "ueberzug"|"viu"|"chafa"|"jp2a"|catimg
conf.media_backend = "jp2a"
-- Number of recent files shown in dashboard
-- 0 disables showing recent files
conf.dashboard_recent_files = 3
-- Enable the header of the dashboard
conf.enable_dashboard_header = false
-- Enable quick links of the dashboard
conf.enable_dashboard_quick_links = true
-- Enable colored indentation lines if theme supports it
conf.enable_color_indentline = true
-- treesitter parsers to be installed
conf.treesitter_ensure_installed = {
  "bash", "go", "html", "java", "json", "lua", "markdown", "markdown_inline",
  "query", "python", "regex", "toml", "vim", "vimdoc", "yaml",
}
-- Enable clangd or ccls will be used for C/C++ diagnostics
conf.enable_clangd = false
-- LSPs that should be installed by Mason-lspconfig
conf.lsp_servers = {
  "bashls", "cssmodules_ls", "denols", "dockerls", "eslint", "gopls",
  "graphql", "html", "jdtls", "jsonls", "julials", "ltex", "lua_ls",
  "marksman", "pylsp", "pyright", "sqlls", "tailwindcss", "terraformls",
  "texlab", "tsserver", "vimls", "yamlls",
}
-- Formatters and linters installed by Mason
conf.formatters_linters = {
  "actionlint", "beautysh", "black", "goimports", "gofumpt", "golangci-lint",
  "google-java-format", "markdownlint", "prettier", "ruff", "sql-formatter",
  "shellcheck", "shfmt", "stylua", "tflint", "yamllint",
}
-- enable greping in hidden files
conf.telescope_grep_hidden = true
-- Show diagnostics, can be one of "none", "icons", "popup". Default is "popup"
--   "none":  diagnostics are disabled but still underlined
--   "icons": only an icon will show, use ',de' to see the diagnostic
--   "popup": an icon will show and a popup with the diagnostic will appear
conf.show_diagnostics = "icons"
-- Enable semantic highlighting
conf.enable_semantic_highlighting = true
-- Convert semantic highlights to treesitter highlights
conf.convert_semantic_highlighting = true

return conf
```

</details>

### Lazyman Neovim Terminal

The `Lazyman` Neovim configuration includes Neovim Terminal management via
[terminal.nvim](https://github.com/rebelot/terminal.nvim). This Neovim terminal
is preconfigured for execution of the `lazyman` command. Shortcut key
bindings to execute `lazyman` in a Neovim terminal have been provided:
`<leader>lm` to bring up the main Lazyman menu, and `<leader>lc` to bring up
the Lazyman configuration menu. While in Neovim with the default
`nvim-Lazyman` configuration, pressing `,lm` will execute the `lazyman`
command in a Neovim floating terminal window and pressing `,lc` will
execute `lazyman -F` in a terminal window. Alternately, executing the
Neovim command `:Lazyman` will also bring up the `lazyman` command
in a Neovim terminal.

The Lazyman Neovim configuration includes an autocmd to automatically
enter insert mode when opening the Neovim Terminal. This allows
immediate input to the `lazyman` prompt. While in the Neovim Terminal
the normal Neovim mode, motion, and command key bindings are in effect.
For example, to leave insert mode press `<ESC>`, to re-enter insert
mode press `i` or `a`.

If [Asciiville](https://github.com/doctorfree/Asciiville) is installed,
pressing `,A` or executing the `:Asciiville` Neovim command will execute
the `asciiville` command in a Neovim floating terminal window.

If the `htop` command is available, `:Htop` will execute the `htop` system
monitor in a floating Neovim terminal window.

This preconfigured Neovim terminal capability is only available in the
`Lazyman` Neovim configuration and not in the other configs.

## Motivation

I'm a lazy man. I wanted to try out a bunch of nifty looking Neovim
configurations but I didn't want to spend a lot of time setting each
of them up and managing them. Instead, I spent a lot of time writing
an install/initialize/manage tool I could use: `lazyman`.

Although the primary motivation for creating this project was to provide
an easy way to try out various Neovim configurations, `lazyman` can be used
to setup and manage Neovim configurations tailored for specific purposes.
A Neovim configuration for work, one for school, one for Python development,
another for git repository maintenance and markdown editing, one with language
servers and debugging tools, one for your mom.

It's also pretty interesting and educational to see how some of these
**Neovim Wizards** setup their configurations.

### Inspiration

Lazyman was inspired by several other Neovim distributions and configurations
including:

- [Michael Peter](https://github.com/Allaman/nvim.git)
- [loctvl](https://github.com/loctvl842/nvim.git)
- [Marc Jakobi](https://github.com/mrcjkb/nvim-config.git)
- [LazyVim](https://github.com/LazyVim/LazyVim)
- [LunarVim](https://github.com/LunarVim/LunarVim)
- [NvChad](https://nvchad.github.io/)
- [rayx](https://github.com/ray-x/nvim.git)

Some of these distributions, like the work of Michael Peter, are released
under an MIT license and I was able to copy directly configuration or
initialization code. Others, like the work of Marc Jakobi, are released
under a more restrictive license and I was only able to use these as
reference but still a valuable aid. I copied my own previous work liberally.

Thanks everybody!

## Notes

### Lazy

The `nvim-Lazyman` Neovim configuration uses the
[Lazy plugin manager](https://github.com/folke/lazy.nvim).
The [Lazyman Wiki](https://github.com/doctorfree/nvim-lazyman/wiki) includes
a list of the
[Lazy loaded plugins](https://github.com/doctorfree/nvim-lazyman/wiki/Lazy-Profile)
in the `nvim-Lazyman` Neovim configuration sorted by
[load order](https://github.com/doctorfree/nvim-lazyman/wiki/Lazy-Profile#sorted-by-load-order)
and
[load time](https://github.com/doctorfree/nvim-lazyman/wiki/Lazy-Profile#sorted-by-loading-time).

### Mason

The `nvim-Lazyman` Neovim configuration uses the
[Mason portable package manager](https://github.com/williamboman/mason.nvim)
to easily install and manage LSP servers, DAP servers, linters, and formatters.

The first time `nvim` is executed Mason will install several packages required
by the new Neovim configuration. Please be patient. If you exit Neovim prior
to completion of the Mason installs, it will resume the next session.

The [Lazyman Wiki](https://github.com/doctorfree/nvim-lazyman/wiki) includes
a list of the
[Mason installed packages](https://github.com/doctorfree/nvim-lazyman/wiki/Mason-Installed)
in the `nvim-Lazyman` Neovim configuration.

### Packer

The `lazyman` command can be used to install and initialize Neovim configurations
using the `Packer` plugin manager. To install and initialize a `Packer` managed
Neovim configuration, specify the `-P` flag on the `lazyman` command line.

For example, to install and initialize the `Abstract` Neovim configuration
at <https://github.com/Abstract-IDE/Abstract> invoke `lazyman` as follows:

```bash
lazyman -C https://github.com/Abstract-IDE/Abstract -N nvim-Abstract -P
```

After `export NVIM_APPNAME="nvim-Abstract"`, invoking `nvim` will bring up
the Abstract Neovim configuration.

Another Packer based Neovim configuration, this one using Fennel, serves as
a second example and is included as a Lazyman supported "Extra" config:

```bash
lazyman -w Fennel
```

To begin exploring this Neovim configuration:

```bash
NVIM_APPNAME="nvim-Fennel" nvim ~/.config/nvim-Fennel/fnl/conf/init.fnl
```

A third example of a Packer based Neovim configuration is the excellent
`MagicVim` config, a fully supported Lazyman Neovim config. To install and
initialize `MagicVim`:

```bash
lazyman -m
```

To begin exploring the `MagicVim` configuration:

```bash
NVIM_APPNAME="nvim-MagicVim" nvim
```

### Plug

The `lazyman` command can be used to install and initialize Neovim configurations
using the `Plug` plugin manager. To install and initialize a `Plug` managed
Neovim configuration, specify the `-p` flag on the `lazyman` command line.

For example, to install and initialize the `Optixal` Neovim configuration
at <https://github.com/Optixal/neovim-init.vim> invoke `lazyman` as follows:

```bash
lazyman -C https://github.com/Optixal/neovim-init.vim -N nvim-Optixal -p
```

After `export NVIM_APPNAME="nvim-Optixal"`, invoking `nvim` will bring up
the Optixal Neovim configuration.

Another Plug based Neovim configuration serves as a second example:

```bash
lazyman -C https://github.com/doctorfree/nvim-plug -N nvim-Plug -p
```

To begin exploring this Neovim configuration:

```bash
NVIM_APPNAME="nvim-Plug" nvim ~/.config/nvim-Plug/init.vim
```

### Health check

After installing and initializing the Neovim configuration, perform a health
check while in Neovim with `:checkhealth`. Examine any warnings or errors and
perform any necessary remedial actions such as installing missing packages
or resolving keymap conflicts.

### Symbolic links

The `NVIM_APPNAME` procedure described above allows you to keep any existing
`~/.config/nvim` and install multiple Neovim configurations, each in its own
separate `~/.config/$NVIM_APPNAME` folder. Note, however, that if you create
a symbolic link from `~/.config/$NVIM_APPNAME` to `~/.config/nvim` with the
intention of using the `nvim-Lazyman` configuration without need of `NVIM_APPNAME`
then you will also need to symlink `~/.local/share/$NVIM_APPNAME` and
`~/.local/state/$NVIM_APPNAME`.

### Shell initialization setup

If `nvim-Lazyman` is installed and initialized using the `NVIM_APPNAME`
environment variable as described above then `NVIM_APPNAME` needs to be
set when a `lazyman` initialized configuration is used. This can be done by
setting and exporting this variable in your shell's initialization file
(e.g. `.bashrc` for Bash users, `.zshrc` for Zsh users). Add the line
`export NVIM_APPNAME="nvim-Lazyman"` to your shell initialization and re-login
or source the initialization file to use the `nvim-Lazyman` configuration.

However, setting `NVIM_APPNAME` in the shell initialization file fixes that
environment variable to a single Neovim configuration and must be reset
to use another configuration. A more flexible approach is to use shell
aliases as described in the next section. Both approaches can be used,
an export in the shell initialization file for the most frequently used
Neovim configuration and aliases to override that for other configurations.

### The nvims fuzzy selector

The `lazyman` installation and configuration automatically configures
convenience aliases for Lazyman installed Neovim configurations. It also
creates an `nvims` alias which dynamically creates a fuzzy searchable
menu of installed Neovim configurations and launches Neovim with the
selected Lazyman Neovim configuration. See `~/.config/nvim-Lazyman/.lazymanrc`.
With this `nvims` alias it is no longer necessary to logout/login or
source a shell initialization file to update the menu of installed
Neovim configurations - the `nvims` alias dynamically generates the menu.

Similarly, a `neovides` alias can be used to select a Neovim configuration
for use with the Neovim GUI `neovide`.

The fuzzy searchable/selectable menu of Neovim configurations can also
be shown with the command `lazyman -S`. Note also that both the `nvims`
alias and the `lazyman -S` command can accept additional filename arguments
which are then passed to Neovim. For example, to edit `/tmp/foo.lua` with
a Neovim configuration selected from the `nvims` menu:

```bash
nvims /tmp/foo.lua
```

Both the `nvims` alias and `neovides` alias accept a `-r` flag which indicates
removal of the selected Neovim configuration.

<details><summary>View the .lazymanrc shell aliases and function</summary>

```bash
# $HOME/.config/nvim-Lazyman/.lazymanrc
# This file should be sourced from the shell initialization file
# e.g. $HOME/.bashrc or $HOME/.zshrc
#
# To use Vim
command -v vim > /dev/null && alias vi='vim'
# To use Neovim
command -v nvim > /dev/null && {
  alias vi='nvim'
  # Uncomment this line to use Neovim even when you type vim
  # Leave commented to use vim as a backup editor if nvim not found
  # alias vim='nvim'
  alias nvims='source ~/.config/nvim-Lazyman/.lazymanrc; nvimselect'
  alias neovides='source ~/.config/nvim-Lazyman/.lazymanrc; neovselect'
  items=()
  ndirs=()
  [ -d ${HOME}/.config/nvim ] && {
    alias nvim-default="NVIM_APPNAME=nvim nvim"
  }
  # Add all previously installed Neovim configurations
  if [ -f ${HOME}/.config/nvim-Lazyman/.nvimdirs ]
  then
    while IFS= read -r ndir
    do
      [ -d ${HOME}/.config/${ndir} ] && {
        alias ${ndir}="NVIM_APPNAME=${ndir} nvim"
        entry=$(echo ${ndir} | sed -e "s/nvim-//")
        items+=("${entry}")
        ndirs+=("${ndir}")
      }
    done < "${HOME}/.config/nvim-Lazyman/.nvimdirs"
  else
    # Add any supported config we find
    [ -d ${HOME}/.config/nvim-Lazyman ] && {
      alias nvim-lazy="NVIM_APPNAME=nvim-Lazyman nvim"
      items+=("Lazyman")
      ndirs+=("nvim-Lazyman")
    }
    [ -d ${HOME}/.config/nvim-LazyVim ] && {
      alias nvim-lazy="NVIM_APPNAME=nvim-LazyVim nvim"
      items+=("LazyVim")
      ndirs+=("nvim-LazyVim")
    }
    [ -d ${HOME}/.config/nvim-Kickstart ] && {
      alias nvim-kick="NVIM_APPNAME=nvim-Kickstart nvim"
      items+=("Kickstart")
      ndirs+=("nvim-Kickstart")
    }
    [ -d ${HOME}/.config/nvim-NvChad ] && {
      alias nvim-chad="NVIM_APPNAME=nvim-NvChad nvim"
      items+=("NvChad")
      ndirs+=("nvim-NvChad")
    }
    [ -d ${HOME}/.config/nvim-AstroNvim ] && {
      alias nvim-astro="NVIM_APPNAME=nvim-AstroNvim nvim"
      items+=("AstroNvim")
      ndirs+=("nvim-AstroNvim")
    }
    [ -d ${HOME}/.config/nvim-Ecovim ] && {
      alias nvim-eco="NVIM_APPNAME=nvim-Ecovim nvim"
      items+=("Ecovim")
      ndirs+=("nvim-Ecovim")
    }
    [ -d ${HOME}/.config/nvim-LunarVim ] && {
      alias nvim-lunar="NVIM_APPNAME=nvim-LunarVim nvim"
      items+=("LunarVim")
      ndirs+=("nvim-LunarVim")
    }
    [ -d ${HOME}/.config/nvim-MultiVim ] && {
      alias nvim-multi="NVIM_APPNAME=nvim-MultiVim nvim"
      items+=("MultiVim")
      ndirs+=("nvim-MultiVim")
    }
    [ -d ${HOME}/.config/nvim-SpaceVim ] && {
      alias nvim-space="NVIM_APPNAME=nvim-SpaceVim nvim"
      items+=("SpaceVim")
      ndirs+=("nvim-SpaceVim")
    }
  fi

  function nvimselect() {
    action="Open"
    remove=
    if [[ "$1" == "-r" ]]
    then
      action="Remove"
      remove=1
      shift
    fi
    filter="$1"
    numitems=${#items[@]}
    if [ ${numitems} -eq 1 ]
    then
      config="${items[@]:0:1}"
    else
      height=$((numitems * 6))
      [ ${height} -gt 100 ] && height=100
      [ ${height} -lt 20 ] && height=20
      if [ "${filter}" ]
      then
        config=$(printf "%s\n" "${items[@]}" | grep -i ${filter} | fzf --prompt=" ${action} Neovim Config  " --height=${height}% --layout=reverse --border --exit-0)
      else
        config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" ${action} Neovim Config  " --height=${height}% --layout=reverse --border --exit-0)
      fi
    fi
    if [[ -z $config ]]; then
      echo "Nothing selected"
      return 0
    else
      if [ -d ${HOME}/.config/nvim-${config} ]
      then
        config="nvim-${config}"
      else
        [ -d ${HOME}/.config/${config} ] || {
          echo "Cannot locate ${config} Neovim configuration directory"
          return 0
        }
      fi
    fi
    if [ "${remove}" ]
    then
      lazyman -R -N ${config}
    else
      NVIM_APPNAME=$config nvim $@
    fi
  }

  function neovselect() {
    action="Open"
    remove=
    if [[ "$1" == "-r" ]]
    then
      action="Remove"
      remove=1
      shift
    fi
    filter="$1"
    numitems=${#items[@]}
    if [ ${numitems} -eq 1 ]
    then
      config="${items[@]:0:1}"
    else
      height=$((numitems * 6))
      [ ${height} -gt 100 ] && height=100
      [ ${height} -lt 20 ] && height=20
      if [ "${filter}" ]
      then
        config=$(printf "%s\n" "${items[@]}" | grep -i ${filter} | fzf --prompt=" ${action} Neovim Config  " --height=${height}% --layout=reverse --border --exit-0)
      else
        config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" ${action} Neovim Config  " --height=${height}% --layout=reverse --border --exit-0)
      fi
    fi
    if [[ -z $config ]]; then
      echo "Nothing selected"
      return 0
    else
      if [ -d ${HOME}/.config/nvim-${config} ]
      then
        config="nvim-${config}"
      else
        [ -d ${HOME}/.config/${config} ] || {
          echo "Cannot locate ${config} Neovim configuration directory"
          return 0
        }
      fi
    fi
    if [ "${remove}" ]
    then
      lazyman -R -N ${config}
    else
      NVIM_APPNAME=$config neovide $@
    fi
  }
}

# Add ~/.local/bin to PATH if it exists
[ -d $HOME/.local/bin ] && {
  [[ ":$PATH:" == *":$HOME/.local/bin:"* ]] || {
    export PATH="$PATH:$HOME/.local/bin"
  }
}
# Add ~/.cargo/bin to PATH if it exists
[ -d $HOME/.cargo/bin ] && {
  [[ ":$PATH:" == *":$HOME/.cargo/bin:"* ]] || {
    export PATH="$PATH:$HOME/.cargo/bin"
  }
}
```

</details>

The `nvims` shell function, when executed, presents a fuzzy searchable menu
of the `lazyman` installed Neovim configurations. The `lazyman` installed
Neovim configurations are maintained in the file
`~/.config/nvim-Lazyman/.nvimdirs`. Entries in this file are what `nvims`
uses for its fuzzy selection menu. When Neovim configurations are installed
or removed with `lazyman` this file is updated accordingly.

Note also that a convenience key binding has been created to launch
`nvims` with `ctrl-n`.

Similarly, if `neovide` is found in the execution PATH then a fuzzy
selectable menu is provided with the `neovides` alias and convenience
key binding of `ctrl-N` to bring up that menu.

<details><summary>View the .nvimsbind shell key binding file</summary>

```bash
# $HOME/.config/nvim-Lazyman/.nvimsbind
# This file should be sourced from the shell initialization file
# after first sourcing ~/.config/nvim-Lazyman/.lazymanrc
command -v nvims > /dev/null && {
  if [ -n "$($SHELL -c 'echo $ZSH_VERSION')" ]; then
   bindkey -s ^n "nvims\n"
  elif [ -n "$($SHELL -c 'echo $BASH_VERSION')" ]; then
   bind -x '"\C-n": nvims'
  else
   bindkey -s ^n "nvims\n"
  fi
}
command -v neovide > /dev/null && {
  if [ -n "$($SHELL -c 'echo $ZSH_VERSION')" ]; then
   bindkey -s ^N "neovides\n"
  elif [ -n "$($SHELL -c 'echo $BASH_VERSION')" ]; then
   bind -x '"\C-N": neovides'
  else
   bindkey -s ^N "neovides\n"
  fi
}
```

</details>

The `nvims` Neovim configuration switching shell function was created by
[Elijah Manor](https://github.com/elijahmanor). He created an excellent
[Neovim Config Switcher](https://youtu.be/LkHjJlSgKZY) video in which
he provides details on use and customization of the `nvims` shell function.

Lazyman has incorporated and adapted the `nvims` shell function for use
with the Lazyman installed Neovim configurations. The `nvims` shell
function is automatically configured during `lazyman` installation.

### Using aliases

In addition to exporting NVIM_APPNAME in your shell initialization file, you
may wish to create aliases to execute with the various Neovim configurations
you have installed. For example, aliases could be created to use Neovim
configurations installed in `~/.config/nvim-LazyVim` and `~/.config/nvim-LunarVim`
as follows:

```bash
alias nvim-lazy="NVIM_APPNAME=nvim-LazyVim nvim"
alias nvim-lunar="NVIM_APPNAME=nvim-LunarVim nvim"
```

After sourcing these aliases in your shell, to invoke Neovim with the LazyVim
configuration run `nvim-lazy filename.py` and to invoke Neovim with the LunarVim
config run `nvim-lunar proposal.md`.

### Using lazyman to explore configurations

Another alternative to setting **NVIM_APPNAME** in the environment or with an
alias is to use the `lazyman` command to specify which Neovim configuration
to use with this invocation. This is done using the `-E config` option to
`lazyman`. When invoking `lazyman` with the `-E config` argument, the Neovim
configuration can be specified by setting `config` to one of `astronvim`,
`ecovim`, `kickstart`, `lazyman`, `lazyvim`, `lunarvim`, `nvchad`, or any
Neovim configuration directory in `~/.config`. For example, to edit the file
`foo.lua` using the LazyVim Neovim configuration:

```bash
lazyman -E lazyvim foo.lua
```

Now you're using the LazyVim Neovim configuration to edit `foo.lua`, all of the
LazyVim key bindings, plugins, options, and configuration will be used.

To instead use the LunarVim Neovim configuration to edit `foo.lua`:

```bash
lazyman -E lunarvim foo.lua
```

Before using `lazyman -E <config> …` to explore a Neovim configuration,
first install and initialize the `<config>` configuration with `lazyman`.

When invoked with the `-E config` option, `lazyman` sets the **NVIM_APPNAME**
environment variable to the specified `config` and executes `nvim` with
all following arguments. This is a pretty easy way to explore all the
`lazyman` installed and initialized Neovim configurations.

## Removal

The [lazyman.sh](lazyman.sh) script can be used to remove previously installed
Neovim configurations with the `-r` command line option. For example, to remove
a previously installed `LazyVim` configuration, its initialized plugins, state,
and cache, execute the following command:

```bash
$HOME/.config/nvim-Lazyman/lazyman.sh -l -r
```

To remove the `nvim-Lazyman` configuration and associated plugins, state, and cache:

```bash
$HOME/.config/nvim-Lazyman/lazyman.sh -r
```

All `lazyman.sh` operations can be performed as a dry run with `-n`. For
example, to see which `LazyVim` folders would be removed without removing any:

```bash
$HOME/.config/nvim-Lazyman/lazyman.sh -n -l -r
```

## Troubleshooting

The most frequent type of issue encountered using `lazyman` to install and
initialize Neovim configurations is incompatibility between the existing
configuration and Neovim supported configuration parameters. Lazyman
uses Neovim 0.9 which includes revised support for several Neovim features.
Many existing Neovim configurations rely on features or configuration
parameters no longer supported in Neovim 0.9.

For example, one of the most frequent issues initializing a Neovim
configuration is the initialization error:

```
Parser not available for language "help"
```

The Treesitter `help` parser was renamed to `vimdoc` and `help` is no longer
supported as a Treesitter parser. These types of changes are called
"breaking changes" and will occur more frequently when using a recent
Neovim build. To correct a `Parser not available for language "help"`
initialization error, locate where in the configuration the Treesitter
`help` parser is set (usually in the `ensure_installed` section of the
Treesitter plugin configuration) and change `help` to `vimdoc`.

See the [Neovim 0.9 release notes](https://github.com/neovim/neovim/releases/tag/v0.9.0)
for an overview of changes. In particular, many of these types of issues
are detailed in the [news.txt for Neovim 0.9](https://github.com/neovim/neovim/blob/040f1459849ab05b04f6bb1e77b3def16b4c2f2b/runtime/doc/news.txt) (`:help news` within nvim).

This is life on the bleeding edge. However, all of the supported Lazyman
Neovim configurations and most of the extra Neovim configurations supported
by `lazyman` do not have Neovim version incompatibilities.

### Lazyman installation

The installation process requires Neovim 0.9 or later. If not present the
install script will attempt to compile current Neovim from source. This step
can fail for a variety of reasons. Most typically, the Neovim build failure
is due to missing libraries, header files, or development environment
components. To debug a failed Lazyman installation, first run the install
script in debug mode to try and determine the cause of the failure:

```bash
brew update
lazyman -d
```

The `lazyman -d` command should run the `install_neovim` script in debug mode
and any errors will be displayed. Alternatively, execute the Neovim install
command directly with `brew install --HEAD neovim` and view the output for
errors.

## Appendix

### Get configuration script

Neovim 0.9 introduced a new feature which allows execution of Lua scripts
in Neovim from the shell command line. The `lazyman` configuration menu
interface uses this new feature to get the current Lazyman Neovim
configuration with shell commands like:

```bash
confval=$(NVIM_APPNAME="nvim-Lazyman" nvim -l ${GET_CONF} ${confname} 2>&1)
```

where `GET_CONF` above is the Lua script `~/.config/nvim-Lazyman/scripts/get_conf.lua`.

<details><summary>View the get_conf.lua script</summary>

```lua
-- Invoke with 'nvim -l get_conf.lua conf_name'
-- Where 'conf_name' is one of the entries in configuration.lua
--
-- For example, from a Bash script:
--
-- #!/bin/bash
-- export NVIM_APPNAME="nvim-Lazyman"
-- nvim -l ~/.config/nvim-Lazyman/scripts/get_conf.lua enable_winbar

local settings = require("configuration")
local config = vim.inspect(_G.arg[1])
local entry = string.gsub(config, '"', "")
print(settings[entry])
```

</details>

Pretty simple, huh? Thanks Neovim!

### Lazyman source code

The convenience script to install and initialize `nvim-Lazyman` is provided at
[lazyman.sh](lazyman.sh). The automated install and initialization performed
by `lazyman.sh` executes the following on your system:

<details><summary>View the lazyman.sh script</summary>

```bash
#!/usr/bin/env bash
#
# lazyman - install, initialize, manage, and explore multiple Neovim configurations
#
# Written by Ronald Record <ronaldrecord@gmail.com>, Spring 2023
#
# shellcheck disable=SC2001,SC2002,SC2016,SC2006,SC2086,SC2181,SC2129,SC2059,SC2076

LAZYMAN="nvim-Lazyman"
LMANDIR="${HOME}/.config/${LAZYMAN}"
NVIMDIRS="${LMANDIR}/.nvimdirs"
NVIMCONF="${LMANDIR}/lua/configuration.lua"
CONFBACK="${LMANDIR}/lua/configuration-orig.lua"
GET_CONF="${LMANDIR}/scripts/get_conf.lua"
# LOLCAT="lolcat --animate --speed=70.0"
LOLCAT="lolcat"
BOLD=$(tput bold 2>/dev/null)
NORM=$(tput sgr0 2>/dev/null)
PLEASE="Please enter your choice"
FIG_TEXT="Lazyman"
USEGUI=
BASECFGS="AstroNvim Ecovim LazyVim LunarVim NvChad SpaceVim MagicVim"
EXTRACFGS="Nv Knmac Roiz Fennel NvPak Optixal Plug Heiker Simple"
STARTCFGS="Kickstart Minimal StartBase Opinion StartLsp StartMason Modular"
# Array with font names
fonts=("sblood" "lean" "sblood" "slant" "shadow" "speed" "small" "script" "standard")
# Supported themes
themes=("nightfox" "tokyonight" "dracula" "kanagawa" "catppuccin" "tundra" "onedarkpro" "everforest" "monokai-pro")
# Themes with styles
styled_themes=("nightfox" "tokyonight" "dracula" "kanagawa" "catppuccin" "onedarkpro" "monokai-pro")

brief_usage() {
  printf "\nUsage: lazyman [-A] [-a] [-b branch] [-c] [-d] [-e] [-E config]"
  printf "\n       [-F] [-i] [-k] [-l] [-m] [-s] [-S] [-v] [-n] [-p] [-P] [-q]"
  printf "\n       [-I] [-L cmd] [-rR] [-C url] [-D subdir] [-N nvimdir]"
  printf "\n       [-U] [-w conf] [-W] [-x conf] [-X] [-y] [-z] [-Z] [-u]"
  [ "$1" == "noexit" ] || exit 1
}

usage() {
  brief_usage noexit
  printf "\nWhere:"
  printf "\n    -A indicates install all supported Neovim configurations"
  printf "\n    -a indicates install and initialize AstroNvim Neovim configuration"
  printf "\n    -b 'branch' specifies an ${LAZYMAN} git branch to checkout"
  printf "\n    -c indicates install and initialize NvChad Neovim configuration"
  printf "\n    -d indicates debug mode"
  printf "\n    -e indicates install and initialize Ecovim Neovim configuration"
  printf "\n    -E 'config' execute 'nvim' with 'config' Neovim configuration"
  printf "\n       'config' can be one of:"
  printf "\n           'lazyman', 'astronvim', 'kickstart', 'magicvim',"
  printf "\n           'ecovim', 'nvchad', 'lazyvim', 'lunarvim', 'spacevim'"
  printf "\n       or any Neovim configuration directory in '~/.config'"
  printf "\n           (e.g. 'lazyman -E lazyvim foo.lua')"
  printf "\n    -F indicates present the Lazyman Configuration menu"
  printf "\n    -i indicates install and initialize Lazyman Neovim configuration"
  printf "\n    -k indicates install and initialize Kickstart Neovim configuration"
  printf "\n    -l indicates install and initialize LazyVim Neovim configuration"
  printf "\n    -m indicates install and initialize MagicVim Neovim configuration"
  printf "\n    -s indicates install and initialize SpaceVim Neovim configuration"
  printf "\n    -v indicates install and initialize LunarVim Neovim configuration"
  printf "\n    -S indicates show Neovim configuration fuzzy selector menu"
  printf "\n    -n indicates dry run, don't actually do anything, just printf's"
  printf "\n    -p indicates use vim-plug rather than Lazy to initialize"
  printf "\n    -P indicates use Packer rather than Lazy to initialize"
  printf "\n    -q indicates quiet install"
  printf "\n    -I indicates install language servers and tools for coding diagnostics"
  printf "\n    -L 'cmd' specifies a Lazy command to run in the selected configuration"
  printf "\n    -r indicates remove the previously installed configuration"
  printf "\n    -R indicates remove previously installed configuration and backups"
  printf "\n    -C 'url' specifies a URL to a Neovim configuration git repository"
  printf "\n    -N 'nvimdir' specifies the folder name to use for the config given by -C"
  printf "\n    -U indicates update an existing configuration"
  printf "\n    -w 'conf' indicates install and initialize Extra 'conf' config"
  printf "\n       'conf' can be one of:"
  printf "\n           'Knmac', 'Roiz', 'Fennel', 'Nv', 'NvPak',"
  printf "\n           'Optixal', 'Plug', 'Simple', or 'Heiker'"
  printf "\n    -W indicates install and initialize all 'Extra' Neovim configurations"
  printf "\n    -x 'conf' indicates install and initialize nvim-starter 'conf' config"
  printf "\n       'conf' can be one of:"
  printf "\n       'Minimal', 'StartBase', 'Opinion', 'StartLsp', 'StartMason', or 'Modular'"
  printf "\n    -X indicates install and initialize all 'Starter' configs"
  printf "\n    -y indicates do not prompt, answer 'yes' to any prompt"
  printf "\n    -z indicates do not run nvim after initialization"
  printf "\n    -Z indicates do not install Homebrew, Neovim, or any other tools"
  printf "\n    -u displays this usage message and exits"
  printf "\nCommands act on NVIM_APPNAME, override with '-N nvimdir' or '-A'"
  printf "\nWithout arguments lazyman installs and initializes ${LAZYMAN}"
  printf "\nor, if initialized, an interactive menu system is displayed.\n"
  exit 1
}

create_backups() {
  ndir="$1"
  [ -d "${HOME}/.config/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nBacking up existing ${ndir} config as ${HOME}/.config/${ndir}-bak$$"
    }
    [ "$tellme" ] || {
      mv "${HOME}/.config/$ndir" "${HOME}/.config/$ndir-bak$$"
    }
  }

  [ -d "${HOME}/.local/share/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nBacking up existing ${ndir} plugins as ${HOME}/.local/share/${ndir}-bak$$"
    }
    [ "$tellme" ] || {
      mv "${HOME}/.local/share/$ndir" "${HOME}/.local/share/$ndir-bak$$"
    }
  }

  [ -d "${HOME}/.local/state/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nBacking up existing ${ndir} state as ${HOME}/.local/state/${ndir}-bak$$"
    }
    [ "$tellme" ] || {
      mv "${HOME}/.local/state/$ndir" "${HOME}/.local/state/$ndir-bak$$"
    }
  }
  [ -d "${HOME}/.cache/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nBacking up existing ${ndir} cache as ${HOME}/.cache/${ndir}-bak$$"
    }
    [ "$tellme" ] || {
      mv "${HOME}/.cache/$ndir" "${HOME}/.cache/$ndir-bak$$"
    }
  }
}

run_command() {
  neodir="$1"
  comm="$2"
  [ "$neodir" == "${lazymandir}" ] && {
    oldpack=${packer}
    oldplug=${plug}
    plug=
    packer=
  }
  [ "$neodir" == "$magicvimdir" ] && {
    oldpack=${packer}
    packer=1
  }
  [ "$tellme" ] || {
    export NVIM_APPNAME="$neodir"
    if [ "$debug" ]; then
      if [ "$packer" ]; then
        nvim --headless -c 'autocmd User PackerComplete quitall' -c "Packer${comm}"
      else
        if [ "$plug" ]; then
          nvim --headless -c 'set nomore' -c "Plug${comm}" -c 'qa'
        else
          if [ "$neodir" == "$spacevimdir" ]; then
            nvim --headless "+${comm}" +qa
          else
            nvim --headless "+Lazy! ${comm}" +qa
          fi
        fi
      fi
    else
      if [ "$packer" ]; then
        nvim --headless -c \
          'autocmd User PackerComplete quitall' -c "Packer${comm}" >/dev/null 2>&1
      else
        if [ "$plug" ]; then
          nvim --headless -c 'set nomore' -c "Plug${comm}" -c 'qa' >/dev/null 2>&1
        else
          if [ "$neodir" == "$spacevimdir" ]; then
            nvim --headless "+${comm}" +qa >/dev/null 2>&1
          else
            nvim --headless "+Lazy! ${comm}" +qa >/dev/null 2>&1
          fi
        fi
      fi
    fi
  }
  [ "$neodir" == "$magicvimdir" ] && packer=${oldpack}
  [ "$neodir" == "${lazymandir}" ] && {
    packer=${oldpack}
    plug=${oldplug}
  }
}

init_neovim() {
  neodir="$1"
  [ "$neodir" == "${lazymandir}" ] && {
    oldpack=${packer}
    oldplug=${plug}
    plug=
    packer=
  }
  [ "$neodir" == "$magicvimdir" ] && {
    oldpack=${packer}
    packer=1
  }
  export NVIM_APPNAME="$neodir"

  [ "$packer" ] && {
    PACKER="${HOME}/.local/share/${neodir}/site/pack/packer/start/packer.nvim"
    [ -d "$PACKER" ] || {
      [ "$quiet" ] || {
        printf "\nCloning packer.nvim into"
        printf "\n\t${PACKER} ... "
      }
      [ "$tellme" ] || {
        git clone --depth 1 \
          https://github.com/wbthomason/packer.nvim "$PACKER" >/dev/null 2>&1
      }
      [ "$quiet" ] || printf "done"
    }
  }

  [ "$plug" ] && {
    PLUG="${HOME}/.local/share/${neodir}/site/autoload/plug.vim"
    [ -d "$PLUG" ] || {
      [ "$quiet" ] || {
        printf "\nCopying plug.vim to"
        printf "\n\t${PLUG} ... "
      }
      [ "$tellme" ] || {
        sh -c "curl -fLo ${PLUG} --create-dirs \
          https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" \
          >/dev/null 2>&1
      }
      [ "$quiet" ] || printf "done"
    }
  }

  if [ "$debug" ]; then
    if [ "$packer" ]; then
      nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
    else
      if [ "$plug" ]; then
        nvim --headless -c 'set nomore' -c 'PlugInstall' -c 'qa'
        nvim --headless -c 'set nomore' -c 'UpdateRemotePlugins' -c 'qa'
        nvim --headless -c 'set nomore' -c 'GoInstallBinaries' -c 'qa'
      else
        if [ "$neodir" == "$spacevimdir" ]; then
          nvim --headless "+SPInstall" +qa
          nvim --headless "+UpdateRemotePlugins" +qa
        else
          if [ "$neodir" == "$lunarvimdir" ]; then
            export NVIM_APPNAME="nvim-LunarVim"
            export LUNARVIM_RUNTIME_DIR="${HOME}/.local/share/${NVIM_APPNAME}"
            export LUNARVIM_CONFIG_DIR="${HOME}/.config/${NVIM_APPNAME}"
            export LUNARVIM_CACHE_DIR="${HOME}/.cache/${NVIM_APPNAME}"
            export LUNARVIM_BASE_DIR="${HOME}/.config/${NVIM_APPNAME}"
          fi
          nvim --headless "+Lazy! sync" +qa
        fi
      fi
    fi
    [ -d "${HOME}/.config/${neodir}/doc" ] && {
      nvim --headless "+helptags ${HOME}/.config/${neodir}/doc" +qa
    }
  else
    if [ "$packer" ]; then
      nvim --headless -c \
        'autocmd User PackerComplete quitall' -c 'PackerSync' >/dev/null 2>&1
    else
      if [ "$plug" ]; then
        nvim --headless -c 'set nomore' -c 'PlugInstall' -c 'qa' >/dev/null 2>&1
        nvim --headless -c 'set nomore' -c 'UpdateRemotePlugins' -c 'qa' >/dev/null 2>&1
        nvim --headless -c 'set nomore' -c 'GoInstallBinaries' -c 'qa' >/dev/null 2>&1
      else
        if [ "$neodir" == "$spacevimdir" ]; then
          nvim --headless "+SPInstall" +qa >/dev/null 2>&1
          nvim --headless "+UpdateRemotePlugins" +qa >/dev/null 2>&1
        else
          if [ "$neodir" == "$lunarvimdir" ]; then
            export NVIM_APPNAME="nvim-LunarVim"
            export LUNARVIM_RUNTIME_DIR="${HOME}/.local/share/${NVIM_APPNAME}"
            export LUNARVIM_CONFIG_DIR="${HOME}/.config/${NVIM_APPNAME}"
            export LUNARVIM_CACHE_DIR="${HOME}/.cache/${NVIM_APPNAME}"
            export LUNARVIM_BASE_DIR="${HOME}/.config/${NVIM_APPNAME}"
          fi
          nvim --headless "+Lazy! sync" +qa >/dev/null 2>&1
        fi
      fi
    fi
    [ -d "${HOME}/.config/${neodir}/doc" ] && {
      nvim --headless "+helptags ${HOME}/.config/${neodir}/doc" +qa >/dev/null 2>&1
    }
  fi
  [ "$neodir" == "$magicvimdir" ] && packer=${oldpack}
  [ "$neodir" == "${lazymandir}" ] && {
    packer=${oldpack}
    plug=${oldplug}
  }
}

add_nvimdirs_entry() {
  ndir="$1"
  if [ -f "${NVIMDIRS}" ]; then
    grep ^"$ndir"$ "${NVIMDIRS}" >/dev/null || {
      echo "$ndir" >>"${NVIMDIRS}"
    }
  else
    [ -d "${LMANDIR}" ] && {
      echo "$ndir" >"${NVIMDIRS}"
    }
  fi
}

remove_nvimdirs_entry() {
  ndir="$1"
  [ -f "${NVIMDIRS}" ] && {
    grep ^"$ndir"$ "${NVIMDIRS}" >/dev/null && {
      grep -v ^"$ndir"$ "${NVIMDIRS}" >/tmp/nvimdirs$$
      cp /tmp/nvimdirs$$ "${NVIMDIRS}"
      rm -f /tmp/nvimdirs$$
    }
  }
}

remove_config() {
  ndir="$1"
  [ "$proceed" ] || {
    printf "\nYou have requested removal of the Neovim configuration at:"
    printf "\n\t${HOME}/.config/${ndir}\n"
    printf "\nConfirm removal of the Neovim ${ndir} configuration\n"
    while true; do
      read -r -p "Remove ${ndir} ? (y/n) " yn
      case $yn in
        [Yy]*)
          break
          ;;
        [Nn]*)
          printf "\nAborting removal and exiting\n"
          exit 0
          ;;
        *)
          printf "\nPlease answer yes or no.\n"
          ;;
      esac
    done
  }

  if [ "${ndir}" == "${lunarvimdir}" ]; then
    USCP="${HOME}/.local/share/${lunarvimdir}/lvim/utils/installer/uninstall.sh"
    [ -x ${USCP} ] || {
      LVIM_URL="https://raw.githubusercontent.com/lunarvim/lunarvim"
      LVIM_UNINSTALL="${LVIM_URL}/master/utils/installer/uninstall.sh"
      curl -s ${LVIM_UNINSTALL} >/tmp/lvim-uninstall$$.sh
      chmod 755 /tmp/lvim-uninstall$$.sh
      USCP="/tmp/lvim-uninstall$$.sh"
    }
    [ "$quiet" ] || {
      printf "\nRunning LunarVim uninstall script"
    }
    [ "$tellme" ] || {
      export NVIM_APPNAME="${lunarvimdir}"
      export LUNARVIM_RUNTIME_DIR="${HOME}/.local/share/${NVIM_APPNAME}"
      export LUNARVIM_CONFIG_DIR="${HOME}/.config/${NVIM_APPNAME}"
      export LUNARVIM_CACHE_DIR="${HOME}/.cache/${NVIM_APPNAME}"
      export LUNARVIM_BASE_DIR="${HOME}/.config/${NVIM_APPNAME}"
      remove_backups=
      [ "$removeall" ] && remove_backups="--remove-backups"
      ${USCP} ${remove_backups} --remove-config >/dev/null 2>&1
    }
  fi
  [ -d "${HOME}/.config/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nRemoving existing ${ndir} config at ${HOME}/.config/${ndir}"
    }
    [ "$tellme" ] || {
      rm -rf "${HOME}/.config/$ndir"
    }
  }
  [ "$removeall" ] && {
    [ "$quiet" ] || {
      printf "\nRemoving any ${ndir} config backups"
    }
    [ "$tellme" ] || {
      rm -rf "${HOME}/.config/$ndir"-bak*
      rm -rf "${HOME}/.config/$ndir".old
    }
  }

  [ -d "${HOME}/.local/share/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nRemoving existing ${ndir} plugins at ${HOME}/.local/share/${ndir}"
    }
    [ "$tellme" ] || {
      rm -rf "${HOME}/.local/share/$ndir"
    }
  }
  [ "$removeall" ] && {
    [ "$quiet" ] || {
      printf "\nRemoving any ${ndir} plugins backups"
    }
    [ "$tellme" ] || {
      rm -rf "${HOME}/.local/share/$ndir"-bak*
      rm -rf "${HOME}/.local/share/$ndir".old
    }
  }

  [ -d "${HOME}/.local/state/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nRemoving existing ${ndir} state at ${HOME}/.local/state/${ndir}"
    }
    [ "$tellme" ] || {
      rm -rf "${HOME}/.local/state/$ndir"
    }
  }
  [ "$removeall" ] && {
    [ "$quiet" ] || {
      printf "\nRemoving any ${ndir} state backups"
    }
    [ "$tellme" ] || {
      rm -rf "${HOME}/.local/state/$ndir"-bak*
      rm -rf "${HOME}/.local/state/$ndir".old
    }
  }

  [ -d "${HOME}/.cache/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nRemoving existing ${ndir} cache at ${HOME}/.cache/${ndir}"
    }
    [ "$tellme" ] || {
      rm -rf "${HOME}/.cache/$ndir"
    }
  }
  [ "$removeall" ] && {
    [ "$quiet" ] || {
      printf "\nRemoving any ${ndir} cache backups"
    }
    [ "$tellme" ] || {
      rm -rf "${HOME}/.cache/$ndir"-bak*
      rm -rf "${HOME}/.cache/$ndir".old
    }
  }
  [ "$tellme" ] || {
    remove_nvimdirs_entry "$ndir"
  }
}

update_config() {
  ndir="$1"
  GITDIR=".config/$ndir"
  [ "${ndir}" == "${lunarvimdir}" ] && GITDIR=".local/share/${lunarvimdir}/lvim"
  [ -d "${HOME}/${GITDIR}" ] && {
    [ "$quiet" ] || {
      printf "\nUpdating existing ${ndir} config at ${HOME}/${GITDIR} ..."
    }
    [ "$tellme" ] || {
      [ "$ndir" == "$lazymandir" ] && {
        [ -f "${HOME}/${GITDIR}/lua/configuration.lua" ] && {
          cp "${HOME}/${GITDIR}/lua/configuration.lua" /tmp/lazyconf$$
        }
      }
      git -C "${HOME}/${GITDIR}" stash >/dev/null 2>&1
      git -C "${HOME}/${GITDIR}" reset --hard >/dev/null 2>&1
      git -C "${HOME}/${GITDIR}" pull >/dev/null 2>&1
    }
    [ "$quiet" ] || {
      printf " done"
    }
    add_nvimdirs_entry "$ndir"
  }
  [ "$ndir" == "$lazymandir" ] && {
    [ -f /tmp/lazyconf$$ ] && {
      cp /tmp/lazyconf$$ "${HOME}/${GITDIR}/lua/configuration.lua"
      rm -f /tmp/lazyconf$$
    }
  }
  [ "$ndir" == "$astronvimdir" ] || [ "$ndir" == "$nvchaddir" ] && {
    if [ "$ndir" == "$astronvimdir" ]; then
      cdir="lua/user"
    else
      cdir="lua/custom"
    fi
    [ -d "${HOME}/.config/$ndir/$cdir" ] && {
      [ "$quiet" ] || {
        printf "\nUpdating existing add-on config at ${HOME}/.config/${ndir}/${cdir} ..."
      }
      [ "$tellme" ] || {
        git -C "${HOME}/.config/$ndir/$cdir" stash >/dev/null 2>&1
        git -C "${HOME}/.config/$ndir"/$cdir reset --hard >/dev/null 2>&1
        git -C "${HOME}/.config/$ndir"/$cdir pull >/dev/null 2>&1
      }
      [ "$quiet" ] || {
        printf " done"
      }
    }
  }
}

set_brew() {
  if [ -x /home/linuxbrew/.linuxbrew/bin/brew ]; then
    HOMEBREW_HOME="/home/linuxbrew/.linuxbrew"
  else
    if [ -x /usr/local/bin/brew ]; then
      HOMEBREW_HOME="/usr/local"
    else
      if [ -x /opt/homebrew/bin/brew ]; then
        HOMEBREW_HOME="/opt/homebrew"
      else
        HOMEBREW_HOME=
      fi
    fi
  fi
  if [ "$HOMEBREW_HOME" ]; then
    BREW_EXE=
  else
    BREW_EXE="${HOMEBREW_HOME}/bin/brew"
  fi
}

clone_repo() {
  reponame="$1"
  repourl="$2"
  repodest="$3"
  [ -d "${HOME}/.config/$repodest" ] || {
    [ "$quiet" ] || {
      printf "\nCloning ${reponame} configuration into"
      printf "\n\t${HOME}/.config/${repodest} ... "
    }
    [ "$tellme" ] || {
      git clone \
        https://github.com/"$repourl" \
        "${HOME}/.config/${repodest}" >/dev/null 2>&1
      add_nvimdirs_entry "$repodest"
    }
    [ "$quiet" ] || printf "done"
  }
}

show_figlet() {
  # Seed random generator
  RANDOM=$$$(date +%s)
  USE_FONT=${fonts[$RANDOM % ${#fonts[@]}]}
  [ "${USE_FONT}" ] || USE_FONT="standard"
  if [ "${have_lolcat}" ]; then
    if [ "${USE_FONT}" == "lean" ]; then
      figlet -c -f "${USE_FONT}" -k -t ${FIG_TEXT} 2>/dev/null | tr ' _/' ' ()' | ${LOLCAT}
    else
      figlet -c -f "${USE_FONT}" -k -t ${FIG_TEXT} 2>/dev/null | ${LOLCAT}
    fi
  else
    if [ "${USE_FONT}" == "lean" ]; then
      figlet -c -f "${USE_FONT}" -k -t ${FIG_TEXT} 2>/dev/null | tr ' _/' ' ()'
    else
      figlet -c -f "${USE_FONT}" -k -t ${FIG_TEXT} 2>/dev/null
    fi
  fi
}

show_info() {
  [ -f "${LMANDIR}"/.lazymanrc ] && {
    source "${LMANDIR}"/.lazymanrc
  }
  readarray -t sorted < <(printf '%s\0' "${ndirs[@]}" | sort -z | xargs -0n1)
  numitems=${#sorted[@]}
  if alias nvims >/dev/null 2>&1; then
    printf "\nThe 'nvims' alias exists:"
    nvims_alias=$(alias nvims)
    printf "\n\t${nvims_alias}"
  else
    printf "\nThe 'nvims' alias does not exist"
    printf "\nSource $HOME/.config/nvim-Lazyman/.lazymanrc in your shell initialization,"
    printf "\nlogout and login"
  fi
  if [ "${have_neovide}" ]; then
    printf "\n\nThe neovide Neovim GUI is installed"
    if alias neovides >/dev/null 2>&1; then
      printf "\n\nThe 'neovides' alias exists:"
      neovides_alias=$(alias neovides)
      printf "\n\t${neovides_alias}"
    else
      printf "\n\nThe 'neovides' alias does not exist"
    fi
  else
    printf "\n\nThe neovide Neovim GUI is not installed"
  fi
  printf "\n\n${numitems} Lazyman Neovim configurations installed:\n"
  for neovim in "${sorted[@]}"; do
    if [ -d ${HOME}/.config/${neovim} ]; then
      printf "\n\t${HOME}/.config/${neovim}"
    else
      printf "\n\tMissing ${HOME}/.config/${neovim} !"
    fi
  done
  nvim_version=$(nvim --version)
  printf "\n\nInstalled Neovim version info:\n\n${nvim_version}\n"
}

show_alias() {
  adir="$1"
  printf "\nAliases like the following are defined in ~/.config/nvim-Lazyman/.lazymanrc"
  if [ "$all" ]; then
    printf "\n\talias lnvim='NVIM_APPNAME=${LAZYMAN} nvim'"
  elif [ "$astronvim" ]; then
    printf "\n\talias avim='NVIM_APPNAME=nvim-AstroNvim nvim'"
  elif [ "$ecovim" ]; then
    printf "\n\talias evim='NVIM_APPNAME=nvim-Ecovim nvim'"
  elif [ "$kickstart" ]; then
    printf "\n\talias kvim='NVIM_APPNAME=nvim-Kickstart nvim'"
  elif [ "$lazyman" ]; then
    printf "\n\talias lmvim='NVIM_APPNAME=${LAZYMAN} nvim'"
  elif [ "$lazyvim" ]; then
    printf "\n\talias lvim='NVIM_APPNAME=nvim-LazyVim nvim'"
  elif [ "$lunarvim" ]; then
    printf "\n\talias lvim='NVIM_APPNAME=nvim-LunarVim nvim'"
  elif [ "$spacevim" ]; then
    printf "\n\talias svim='NVIM_APPNAME=nvim-SpaceVim nvim'"
  elif [ "$nvchad" ]; then
    printf "\n\talias cvim='NVIM_APPNAME=nvim-NvChad nvim'"
  elif [ "$magicvim" ]; then
    printf "\n\talias mvim='NVIM_APPNAME=nvim-MagicVim nvim'"
  else
    printf "\n\talias lmvim=\"NVIM_APPNAME=${adir} nvim\""
  fi
  printf "\n"
}

set_haves() {
  have_brew=$(type -p brew)
  have_fzf=$(type -p fzf)
  have_cargo=$(type -p cargo)
  have_neovide=$(type -p neovide)
  have_figlet=$(type -p figlet)
  have_tscli=$(type -p tree-sitter)
  have_rocks=$(type -p luarocks)
  have_lolcat=$(type -p lolcat)
  have_rich=$(type -p rich)
  have_xclip=$(type -p xclip)
}

get_conf_value() {
  confname="$1"
  confval=$(NVIM_APPNAME="nvim-Lazyman" nvim -l ${GET_CONF} ${confname} 2>&1)
  echo "${confval}"
}

set_conf_value() {
  confname="$1"
  confval="$2"
  grep "conf.${confname} =" "${NVIMCONF}" >/dev/null && {
    case ${confval} in
      true | false | [0-9])
        cat "${NVIMCONF}" \
          | sed -e "s/conf.${confname} =.*/conf.${confname} = ${confval}/" >/tmp/nvim$$
        ;;
      *)
        cat "${NVIMCONF}" \
          | sed -e "s/conf.${confname} =.*/conf.${confname} = \"${confval}\"/" >/tmp/nvim$$
        ;;
    esac
    cp /tmp/nvim$$ "${NVIMCONF}"
    rm -f /tmp/nvim$$
  }
}

set_chat_gpt() {
  [ "$OPENAI_API_KEY" ] && {
    grep 'conf.enable_chatgpt' "${NVIMCONF}" >/dev/null && {
      cat "${NVIMCONF}" \
        | sed -e "s/conf.enable_chatgpt.*/conf.enable_chatgpt = true/" >/tmp/nvim$$
      cp /tmp/nvim$$ "${NVIMCONF}"
      rm -f /tmp/nvim$$
    }
  }
}

select_theme_style() {
  selected_style="${theme_style}"
  case "$1" in
    kanagawa)
      styles=("wave" "dragon" "lotus")
      ;;
    tokyonight)
      styles=("night" "storm" "day" "moon")
      ;;
    onedarkpro)
      styles=("onedark" "onelight" "onedark_vivid" "onedark_dark")
      ;;
    catppuccin)
      styles=("latte" "frappe" "macchiato" "mocha" "custom")
      ;;
    dracula)
      styles=("blood" "magic" "soft" "default")
      ;;
    nightfox)
      styles=("carbonfox" "dawnfox" "dayfox" "duskfox" "nightfox" "nordfox" "terafox")
      ;;
    monokai-pro)
      styles=("classic" "octagon" "pro" "machine" "ristretto" "spectrum")
      ;;
    *)
      styles=()
      ;;
  esac
  have_fzf=$(type -p fzf)
  if [ "${have_fzf}" ]; then
    choice=$(printf "%s\n" "${styles[@]}" | fzf --prompt=" Neovim Theme Style  " --layout=reverse --border --exit-0)
    [ "${choice}" == "${theme_style}" ] || {
      if [[ " ${styles[*]} " =~ " ${choice} " ]]; then
        set_conf_value "theme_style" "${choice}"
      fi
    }
  else
    have_figlet=$(type -p figlet)
    have_lolcat=$(type -p lolcat)
    while true; do
      [ "$debug" ] || clear
      printf "\n"
      [ "${have_figlet}" ] && show_figlet
      printf "\n"
      PS3="${BOLD}${PLEASE} (numeric or text, 'h' for help): ${NORM}"
      options=()
      for sty in "${styles[@]}"; do
        if [ "${theme_style}" == "$sty" ]; then
          options+=("$sty   ")
        else
          options+=("$sty")
        fi
      done
      [ "${theme_style}" == "${selected_style}" ] || {
        options+=("Set style to ${theme_style}")
      }
      options+=("Configuration Menu" "Main Menu" "Quit")
      select opt in "${options[@]}"; do
        case "$opt,$REPLY" in
          "h",* | *,"h" | "H",* | *,"H" | "help",* | *,"help" | "Help",* | *,"Help")
            [ "$debug" ] || clear
            printf "\n"
            man lazyman
            break
            ;;
          "wave",* | *,"wave")
            theme_style="wave"
            break
            ;;
          "dragon",* | *,"dragon")
            theme_style="dragon"
            break
            ;;
          "lotus",* | *,"lotus")
            theme_style="lotus"
            break
            ;;
          "night",* | *,"night")
            theme_style="night"
            break
            ;;
          "storm",* | *,"storm")
            theme_style="storm"
            break
            ;;
          "dayfox",* | *,"dayfox")
            theme_style="dayfox"
            break
            ;;
          "day",* | *,"day")
            theme_style="day"
            break
            ;;
          "moon",* | *,"moon")
            theme_style="moon"
            break
            ;;
          "onedark",* | *,"onedark")
            theme_style="onedark"
            break
            ;;
          "onelight",* | *,"onelight")
            theme_style="onelight"
            break
            ;;
          "onedark_vivid",* | *,"onedark_vivid")
            theme_style="onedark_vivid"
            break
            ;;
          "onedark_dark",* | *,"onedark_dark")
            theme_style="onedark_dark"
            break
            ;;
          "latte",* | *,"latte")
            theme_style="latte"
            break
            ;;
          "frappe",* | *,"frappe")
            theme_style="frappe"
            break
            ;;
          "macchiato",* | *,"macchiato")
            theme_style="macchiato"
            break
            ;;
          "mocha",* | *,"mocha")
            theme_style="mocha"
            break
            ;;
          "custom",* | *,"custom")
            theme_style="custom"
            break
            ;;
          "blood",* | *,"blood")
            theme_style="blood"
            break
            ;;
          "magic",* | *,"magic")
            theme_style="magic"
            break
            ;;
          "soft",* | *,"soft")
            theme_style="soft"
            break
            ;;
          "default",* | *,"default")
            theme_style="default"
            break
            ;;
          "carbonfox",* | *,"carbonfox")
            theme_style="carbonfox"
            break
            ;;
          "dawnfox",* | *,"dawnfox")
            theme_style="dawnfox"
            break
            ;;
          "duskfox",* | *,"duskfox")
            theme_style="duskfox"
            break
            ;;
          "nightfox",* | *,"nightfox")
            theme_style="nightfox"
            break
            ;;
          "nordfox",* | *,"nordfox")
            theme_style="nordfox"
            break
            ;;
          "terafox",* | *,"terafox")
            theme_style="terafox"
            break
            ;;
          "classic",* | *,"classic")
            theme_style="classic"
            break
            ;;
          "octagon",* | *,"octagon")
            theme_style="octagon"
            break
            ;;
          "pro",* | *,"pro")
            theme_style="pro"
            break
            ;;
          "machine",* | *,"machine")
            theme_style="machine"
            break
            ;;
          "ristretto",* | *,"ristretto")
            theme_style="ristretto"
            break
            ;;
          "Set style to"*,* | *,"Set style to"*)
            set_conf_value "theme_style" "${theme_style}"
            break 2
            ;;
          "Configuration Menu"*,* | *,"Configuration Menu"*)
            show_conf_menu
            break
            ;;
          "Main Menu"*,* | *,"Main Menu"*)
            show_main_menu
            break
            ;;
          "Quit",* | *,"Quit" | "quit",* | *,"quit")
            printf "\nExiting Lazyman\n"
            exit 0
            ;;
        esac
        REPLY=
      done
    done
  fi
}

set_default_style() {
  case "$1" in
    kanagawa)
      set_conf_value "theme_style" "dragon"
      ;;
    tokyonight)
      set_conf_value "theme_style" "moon"
      ;;
    onedarkpro)
      set_conf_value "theme_style" "onedark_dark"
      ;;
    catppuccin)
      set_conf_value "theme_style" "mocha"
      ;;
    dracula)
      set_conf_value "theme_style" "soft"
      ;;
    nightfox)
      set_conf_value "theme_style" "carbonfox"
      ;;
    monokai-pro)
      set_conf_value "theme_style" "pro"
      ;;
    *)
      set_conf_value "theme_style" "none"
      ;;
  esac
}

select_theme() {
  selected_theme="$1"
  have_fzf=$(type -p fzf)
  if [ "${have_fzf}" ]; then
    theme=$(printf "%s\n" "${themes[@]}" | fzf --prompt=" Neovim Theme  " --layout=reverse --border --exit-0)
    [ "${theme}" == "${selected_theme}" ] || {
      if [[ " ${themes[*]} " =~ " ${theme} " ]]; then
        set_conf_value "theme" "${theme}"
        set_default_style "${theme}"
      fi
    }
  else
    have_figlet=$(type -p figlet)
    have_lolcat=$(type -p lolcat)
    while true; do
      [ "$debug" ] || clear
      printf "\n"
      [ "${have_figlet}" ] && show_figlet
      printf "\n"
      PS3="${BOLD}${PLEASE} (numeric or text, 'h' for help): ${NORM}"
      options=()
      for thm in "${themes[@]}"; do
        if [ "${theme}" == "$thm" ]; then
          options+=("$thm   ")
        else
          options+=("$thm")
        fi
      done
      [ "${theme}" == "${selected_theme}" ] || {
        options+=("Set theme to ${theme}")
      }
      options+=("Configuration Menu" "Main Menu" "Quit")
      select opt in "${options[@]}"; do
        case "$opt,$REPLY" in
          "h",* | *,"h" | "H",* | *,"H" | "help",* | *,"help" | "Help",* | *,"Help")
            [ "$debug" ] || clear
            printf "\n"
            man lazyman
            break
            ;;
          "nightfox"*,* | *,"nightfox"*)
            theme="nightfox"
            break
            ;;
          "tokyonight"*,* | *,"tokyonight"*)
            theme="tokyonight"
            break
            ;;
          "dracula"*,* | *,"dracula"*)
            theme="dracula"
            break
            ;;
          "kanagawa"*,* | *,"kanagawa"*)
            theme="kanagawa"
            break
            ;;
          "catppuccin"*,* | *,"catppuccin"*)
            theme="catppuccin"
            break
            ;;
          "tundra"*,* | *,"tundra"*)
            theme="tundra"
            break
            ;;
          "onedarkpro"*,* | *,"onedarkpro"*)
            theme="onedarkpro"
            break
            ;;
          "everforest"*,* | *,"everforest"*)
            theme="everforest"
            break
            ;;
          "monokai-pro"*,* | *,"monokai-pro"*)
            theme="monokai-pro"
            break
            ;;
          "Set theme to"*,* | *,"Set theme to"*)
            set_conf_value "theme" "${theme}"
            set_default_style "${theme}"
            break 2
            ;;
          "Configuration Menu"*,* | *,"Configuration Menu"*)
            show_conf_menu
            break
            ;;
          "Main Menu"*,* | *,"Main Menu"*)
            show_main_menu
            break
            ;;
          "Quit",* | *,"Quit" | "quit",* | *,"quit")
            printf "\nExiting Lazyman\n"
            exit 0
            ;;
        esac
        REPLY=
      done
    done
  fi
}

show_conf_menu() {
  have_figlet=$(type -p figlet)
  have_lolcat=$(type -p lolcat)
  while true; do
    [ "$debug" ] || clear
    [ "${have_figlet}" ] && show_figlet
    [ -f ${GET_CONF} ] || {
      printf "\n\nWARNING: missing ${GET_CONF}"
      printf "\nUnable to modify configuration from this menu"
      printf "\nYou may need to update or re-install Lazyman"
      printf "\nPress Enter to continue\n"
      read -r yn
      show_main_menu
      break
    }
    theme=$(get_conf_value theme)
    use_theme="${theme}"
    theme_style=$(get_conf_value theme_style)
    use_theme_style="${theme_style}"
    enable_transparent=$(get_conf_value enable_transparent)
    if [ "${enable_transparent}" == "true" ]; then
      use_transparent=""
    else
      use_transparent="✗"
    fi
    mapleader=$(get_conf_value mapleader)
    use_mapleader="${mapleader}"
    maplocalleader=$(get_conf_value maplocalleader)
    use_maplocalleader="${maplocalleader}"
    enable_number=$(get_conf_value number)
    if [ "${enable_number}" == "true" ]; then
      use_number=""
    else
      use_number="✗"
    fi
    enable_relative_number=$(get_conf_value relative_number)
    if [ "${enable_relative_number}" == "true" ]; then
      use_relative_number=""
    else
      use_relative_number="✗"
    fi
    enable_list=$(get_conf_value list)
    if [ "${enable_list}" == "true" ]; then
      use_list=""
    else
      use_list="✗"
    fi
    session_manager=$(get_conf_value session_manager)
    use_session_manager="${session_manager}"
    enable_neotree=$(get_conf_value enable_neotree)
    if [ "${enable_neotree}" == "true" ]; then
      use_neotree="neo-tree"
    else
      use_neotree="nvim-tree"
    fi
    enable_noice=$(get_conf_value enable_noice)
    if [ "${enable_noice}" == "true" ]; then
      use_noice=""
    else
      use_noice="✗"
    fi
    enable_chatgpt=$(get_conf_value enable_chatgpt)
    if [ "${enable_chatgpt}" == "true" ]; then
      use_chatgpt=""
    else
      use_chatgpt="✗"
    fi
    enable_rainbow2=$(get_conf_value enable_rainbow2)
    if [ "${enable_rainbow2}" == "true" ]; then
      use_rainbow2=""
    else
      use_rainbow2="✗"
    fi
    enable_fancy=$(get_conf_value enable_fancy)
    if [ "${enable_fancy}" == "true" ]; then
      use_fancy=""
    else
      use_fancy="✗"
    fi
    enable_wilder=$(get_conf_value enable_wilder)
    if [ "${enable_wilder}" == "true" ]; then
      use_wilder=""
    else
      use_wilder="✗"
    fi
    enable_statusline=$(get_conf_value enable_statusline)
    if [ "${enable_statusline}" == "true" ]; then
      use_statusline=""
    else
      use_statusline="✗"
    fi
    enable_tabline=$(get_conf_value enable_tabline)
    if [ "${enable_tabline}" == "true" ]; then
      use_tabline=""
    else
      use_tabline="✗"
    fi
    enable_winbar=$(get_conf_value enable_winbar)
    if [ "${enable_winbar}" == "true" ]; then
      use_winbar=""
    else
      use_winbar="✗"
    fi
    enable_terminal=$(get_conf_value enable_terminal)
    if [ "${enable_terminal}" == "true" ]; then
      use_terminal=""
    else
      use_terminal="✗"
    fi
    enable_games=$(get_conf_value enable_games)
    if [ "${enable_games}" == "true" ]; then
      use_games=""
    else
      use_games="✗"
    fi
    enable_alpha=$(get_conf_value enable_alpha)
    if [ "${enable_alpha}" == "true" ]; then
      use_alpha=""
    else
      use_alpha="✗"
    fi
    enable_bookmarks=$(get_conf_value enable_bookmarks)
    if [ "${enable_bookmarks}" == "true" ]; then
      use_bookmarks=""
    else
      use_bookmarks="✗"
    fi
    enable_ide=$(get_conf_value enable_ide)
    if [ "${enable_ide}" == "true" ]; then
      use_ide=""
    else
      use_ide="✗"
    fi
    enable_navigator=$(get_conf_value enable_navigator)
    if [ "${enable_navigator}" == "true" ]; then
      use_navigator=""
    else
      use_navigator="✗"
    fi
    enable_project=$(get_conf_value enable_project)
    if [ "${enable_project}" == "true" ]; then
      use_project=""
    else
      use_project="✗"
    fi
    enable_picker=$(get_conf_value enable_picker)
    if [ "${enable_picker}" == "true" ]; then
      use_picker=""
    else
      use_picker="✗"
    fi
    enable_smooth_scrolling=$(get_conf_value enable_smooth_scrolling)
    if [ "${enable_smooth_scrolling}" == "true" ]; then
      use_smooth_scrolling=""
    else
      use_smooth_scrolling="✗"
    fi
    dashboard_recent_files=$(get_conf_value dashboard_recent_files)
    use_dashboard_recent_files="${dashboard_recent_files}"
    enable_dashboard_header=$(get_conf_value enable_dashboard_header)
    if [ "${enable_dashboard_header}" == "true" ]; then
      use_dashboard_header=""
    else
      use_dashboard_header="✗"
    fi
    enable_dashboard_quick_links=$(get_conf_value enable_dashboard_quick_links)
    if [ "${enable_dashboard_quick_links}" == "true" ]; then
      use_dashboard_quick_links=""
    else
      use_dashboard_quick_links="✗"
    fi
    enable_color_indentline=$(get_conf_value enable_color_indentline)
    if [ "${enable_color_indentline}" == "true" ]; then
      use_color_indentline=""
    else
      use_color_indentline="✗"
    fi
    show_diagnostics=$(get_conf_value show_diagnostics)
    use_show_diagnostics="${show_diagnostics}"
    enable_semantic_highlighting=$(get_conf_value enable_semantic_highlighting)
    if [ "${enable_semantic_highlighting}" == "true" ]; then
      use_semantic_highlighting=""
    else
      use_semantic_highlighting="✗"
    fi
    convert_semantic_highlighting=$(get_conf_value convert_semantic_highlighting)
    if [ "${convert_semantic_highlighting}" == "true" ]; then
      convert_semantic_highlighting=""
    else
      convert_semantic_highlighting="✗"
    fi
    PS3="${BOLD}${PLEASE} (numeric or text, 'h' for help): ${NORM}"
    options=()
    options+=("Theme [${use_theme}]")
    if [[ " ${styled_themes[*]} " =~ " ${use_theme} " ]]; then
      options+=("Style [${use_theme_style}]")
    fi
    options+=("Diagnostics [${use_show_diagnostics}]")
    options+=("File Tree   [${use_neotree}]")
    options+=("Session Mgr [${use_session_manager}]")
    options+=("Leader        [${use_mapleader}]")
    options+=("Local Leader  [${use_maplocalleader}]")
    options+=("Transparency  [${use_transparent}]")
    options+=("Number Lines  [${use_number}]")
    options+=("Relative Nums [${use_relative_number}]")
    options+=("List Chars    [${use_list}]")
    options+=("Noice UI      [${use_noice}]")
    options+=("ChatGPT       [${use_chatgpt}]")
    options+=("Rainbow 2     [${use_rainbow2}]")
    options+=("Fancy Icons   [${use_fancy}]")
    options+=("Wilder Menus  [${use_wilder}]")
    options+=("Terminal      [${use_terminal}]")
    options+=("Enable Games  [${use_games}]")
    options+=("Enable Alpha  [${use_alpha}]")
    options+=("Bookmarks     [${use_bookmarks}]")
    options+=("Enable IDE    [${use_ide}]")
    options+=("Navigator     [${use_navigator}]")
    options+=("Project       [${use_project}]")
    options+=("Picker        [${use_picker}]")
    options+=("Smooth Scroll [${use_smooth_scrolling}]")
    options+=("Alpha Header  [${use_dashboard_header}]")
    options+=("Recent Files  [${use_dashboard_recent_files}]")
    options+=("Quick Links   [${use_dashboard_quick_links}]")
    options+=("Color Indent  [${use_color_indentline}]")
    options+=("Semantic HL   [${use_semantic_highlighting}]")
    options+=("Convert SemHL [${convert_semantic_highlighting}]")
    options+=("Status Line   [${use_statusline}]")
    options+=("Tab Line      [${use_tabline}]")
    options+=("Winbar        [${use_winbar}]")
    [ -f ${CONFBACK} ] && {
      diff ${CONFBACK} ${NVIMCONF} >/dev/null || options+=("Reset to Defaults")
    }
    options+=("Main Menu")
    options+=("Quit")
    select opt in "${options[@]}"; do
      case "$opt,$REPLY" in
        "h",* | *,"h" | "H",* | *,"H" | "help",* | *,"help" | "Help",* | *,"Help")
          [ "$debug" ] || clear
          printf "\n"
          man lazyman
          break
          ;;
        "Status Line"*,* | *,"Status Line"*)
          if [ "${enable_statusline}" == "true" ]; then
            set_conf_value "enable_statusline" "false"
          else
            set_conf_value "enable_statusline" "true"
          fi
          break
          ;;
        "Tab Line"*,* | *,"Tab Line"*)
          if [ "${enable_tabline}" == "true" ]; then
            set_conf_value "enable_tabline" "false"
          else
            set_conf_value "enable_tabline" "true"
          fi
          break
          ;;
        "Winbar"*,* | *,"Winbar"*)
          if [ "${enable_winbar}" == "true" ]; then
            set_conf_value "enable_winbar" "false"
          else
            set_conf_value "enable_winbar" "true"
          fi
          break
          ;;
        "Style"*,* | *,"Style"*)
          select_theme_style ${theme}
          break
          ;;
        "Theme"*,* | *,"Theme"*)
          select_theme ${theme}
          break
          ;;
        "Transparency"*,* | *,"Transparency"*)
          if [ "${enable_transparent}" == "true" ]; then
            set_conf_value "enable_transparent" "false"
          else
            set_conf_value "enable_transparent" "true"
          fi
          break
          ;;
        "Leader"*,* | *,"Leader"*)
          if [ "${use_mapleader}" == "," ]; then
            set_conf_value "mapleader" " "
          else
            set_conf_value "mapleader" ","
          fi
          break
          ;;
        "Local Leader"*,* | *,"Local Leader"*)
          if [ "${use_maplocalleader}" == "," ]; then
            set_conf_value "maplocalleader" " "
          else
            set_conf_value "maplocalleader" ","
          fi
          break
          ;;
        "Number Lines"*,* | *,"Number Lines"*)
          if [ "${enable_number}" == "true" ]; then
            set_conf_value "number" "false"
          else
            set_conf_value "number" "true"
          fi
          break
          ;;
        "Relative Num"*,* | *,"Relative Num"*)
          if [ "${enable_relative_number}" == "true" ]; then
            set_conf_value "relative_number" "false"
          else
            set_conf_value "relative_number" "true"
          fi
          break
          ;;
        "List"*,* | *,"List"*)
          if [ "${enable_list}" == "true" ]; then
            set_conf_value "list" "false"
          else
            set_conf_value "list" "true"
          fi
          break
          ;;
        "Session Mgr"*,* | *,"Session Mgr"*)
          if [ "${session_manager}" == "possession" ]; then
            set_conf_value "session_manager" "persistence"
          else
            set_conf_value "session_manager" "possession"
          fi
          break
          ;;
        "File"*,* | *,"File"*)
          if [ "${enable_neotree}" == "true" ]; then
            set_conf_value "enable_neotree" "false"
          else
            set_conf_value "enable_neotree" "true"
          fi
          break
          ;;
        "Noice"*,* | *,"Noice"*)
          if [ "${enable_noice}" == "true" ]; then
            set_conf_value "enable_noice" "false"
          else
            set_conf_value "enable_noice" "true"
          fi
          break
          ;;
        "ChatGPT"*,* | *,"ChatGPT"*)
          if [ "${enable_chatgpt}" == "true" ]; then
            set_conf_value "enable_chatgpt" "false"
          else
            set_conf_value "enable_chatgpt" "true"
          fi
          break
          ;;
        "Rainbow"*,* | *,"Rainbow"*)
          if [ "${enable_rainbow2}" == "true" ]; then
            set_conf_value "enable_rainbow2" "false"
          else
            set_conf_value "enable_rainbow2" "true"
          fi
          break
          ;;
        "Fancy"*,* | *,"Fancy"*)
          if [ "${enable_fancy}" == "true" ]; then
            set_conf_value "enable_fancy" "false"
          else
            set_conf_value "enable_fancy" "true"
          fi
          break
          ;;
        "Wilder"*,* | *,"Wilder"*)
          if [ "${enable_wilder}" == "true" ]; then
            set_conf_value "enable_wilder" "false"
          else
            set_conf_value "enable_wilder" "true"
          fi
          break
          ;;
        "Terminal"*,* | *,"Terminal"*)
          if [ "${enable_terminal}" == "true" ]; then
            set_conf_value "enable_terminal" "false"
          else
            set_conf_value "enable_terminal" "true"
          fi
          break
          ;;
        "Enable Games"*,* | *,"Enable Games"*)
          if [ "${enable_games}" == "true" ]; then
            set_conf_value "enable_games" "false"
          else
            set_conf_value "enable_games" "true"
          fi
          break
          ;;
        "Enable Alpha"*,* | *,"Enable Alpha"*)
          if [ "${enable_alpha}" == "true" ]; then
            set_conf_value "enable_alpha" "false"
          else
            set_conf_value "enable_alpha" "true"
          fi
          break
          ;;
        "Bookmarks"*,* | *,"Bookmarks"*)
          if [ "${enable_bookmarks}" == "true" ]; then
            set_conf_value "enable_bookmarks" "false"
          else
            set_conf_value "enable_bookmarks" "true"
          fi
          break
          ;;
        "Enable IDE"*,* | *,"Enable IDE"*)
          if [ "${enable_ide}" == "true" ]; then
            set_conf_value "enable_ide" "false"
          else
            set_conf_value "enable_ide" "true"
          fi
          break
          ;;
        "Navigator"*,* | *,"Navigator"*)
          if [ "${enable_navigator}" == "true" ]; then
            set_conf_value "enable_navigator" "false"
          else
            set_conf_value "enable_navigator" "true"
          fi
          break
          ;;
        "Project"*,* | *,"Project"*)
          if [ "${enable_project}" == "true" ]; then
            set_conf_value "enable_project" "false"
          else
            set_conf_value "enable_project" "true"
          fi
          break
          ;;
        "Picker"*,* | *,"Picker"*)
          if [ "${enable_picker}" == "true" ]; then
            set_conf_value "enable_picker" "false"
          else
            set_conf_value "enable_picker" "true"
          fi
          break
          ;;
        "Smooth Scroll"*,* | *,"Smooth Scroll"*)
          if [ "${enable_smooth_scrolling}" == "true" ]; then
            set_conf_value "enable_smooth_scrolling" "false"
          else
            set_conf_value "enable_smooth_scrolling" "true"
          fi
          break
          ;;
        "Recent Files"*,* | *,"Recent Files"*)
          choices=("0" "1" "2" "3" "4" "5" "6" "7" "8" "9")
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Number of Recent Files  " --layout=reverse --border --exit-0)
          [ "${choice}" == "${dashboard_recent_files}" ] || {
            if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
              set_conf_value "dashboard_recent_files" "${choice}"
            fi
          }
          break
          ;;
        "Alpha Header"*,* | *,"Alpha Header"*)
          if [ "${enable_dashboard_header}" == "true" ]; then
            set_conf_value "enable_dashboard_header" "false"
          else
            set_conf_value "enable_dashboard_header" "true"
          fi
          break
          ;;
        "Quick Links"*,* | *,"Quick Links"*)
          if [ "${enable_dashboard_quick_links}" == "true" ]; then
            set_conf_value "enable_dashboard_quick_links" "false"
          else
            set_conf_value "enable_dashboard_quick_links" "true"
          fi
          break
          ;;
        "Color Indent"*,* | *,"Color Indent"*)
          if [ "${enable_color_indentline}" == "true" ]; then
            set_conf_value "enable_color_indentline" "false"
          else
            set_conf_value "enable_color_indentline" "true"
          fi
          break
          ;;
        "Diagnostic"*,* | *,"Diagnostic"*)
          choices=("none" "icons" "popup")
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Neovim Diagnostics  " --layout=reverse --border --exit-0)
          [ "${choice}" == "${show_diagnostics}" ] || {
            if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
              set_conf_value "show_diagnostics" "${choice}"
            fi
          }
          break
          ;;
        "Semantic HL"*,* | *,"Semantic HL"*)
          if [ "${enable_semantic_highlighting}" == "true" ]; then
            set_conf_value "enable_semantic_highlighting" "false"
          else
            set_conf_value "enable_semantic_highlighting" "true"
          fi
          break
          ;;
        "Convert SemHL"*,* | *,"Convert SemHL"*)
          if [ "${convert_semantic_highlighting}" == "true" ]; then
            set_conf_value "convert_semantic_highlighting" "false"
          else
            set_conf_value "convert_semantic_highlighting" "true"
          fi
          break
          ;;
        "Reset"*,* | *,"Reset"*)
          [ -f ${CONFBACK} ] && {
            cp ${CONFBACK} ${NVIMCONF}
            set_chat_gpt
          }
          break
          ;;
        "Main Menu"*,* | *,"Main Menu"*)
          show_main_menu
          break
          ;;
        "Quit",* | *,"Quit" | "quit",* | *,"quit")
          printf "\nExiting Lazyman\n"
          exit 0
          ;;
      esac
      REPLY=
    done
  done
}

show_main_menu() {
  set_haves

  while true; do
    if [ "${USEGUI}" ]; then
      use_gui="neovide"
    else
      use_gui="neovim"
    fi
    [ "$debug" ] || clear
    items=()
    showinstalled=1
    show_warning=
    if [ -f "${LMANDIR}"/.lazymanrc ]; then
      source "${LMANDIR}"/.lazymanrc
    else
      show_warning=1
      showinstalled=
    fi
    readarray -t sorted < <(printf '%s\0' "${items[@]}" | sort -z | xargs -0n1)
    numitems=${#sorted[@]}
    if [ ${numitems} -gt 16 ]; then
      printf "\n"
    else
      [ "${have_figlet}" ] && show_figlet
    fi
    [ "${show_warning}" ] && {
      if [ "${have_rich}" ]; then
        rich "[bold red]WARNING[/]: missing [b yellow]${LMANDIR}/.lazymanrc[/]
  reinstall Lazyman with:
    [bold green]lazyman -R -N ${LAZYMAN}[/]
  followed by:
        [bold green]lazyman[/]" -p -a rounded -c
      else
        printf "\nWARNING: missing ${LMANDIR}/.lazymanrc"
        printf "\nReinstall Lazyman with:"
        printf "\n\tlazyman -R -N ${LAZYMAN}"
        printf "\n\tlazyman\n"
      fi
    }
    confword="configurations"
    [ ${numitems} -eq 1 ] && confword="configuration"
    if [ "${have_rich}" ]; then
      rich "[b magenta]${numitems} Lazyman[/] [b green]Neovim ${confword}[/] [b magenta]installed[/]" -p -c
    else
      printf "\n${numitems} Lazyman Neovim configurations installed:\n"
    fi
    [ "${showinstalled}" ] && {
      linelen=0
      if [ "${have_rich}" ]; then
        neovims=""
        leader="[b green]"
        for neovim in "${sorted[@]}"; do
          neovims="${neovims} ${leader}${neovim}[/]"
          if [ "${leader}" == "[b green]" ]; then
            leader="[b magenta]"
          else
            leader="[b green]"
          fi
        done
        rich "${neovims}" -p -a rounded -c -C -w 78
      else
        printf "\t"
        for neovim in "${sorted[@]}"; do
          printf "${neovim}  "
          nvsz=${#neovim}
          linelen=$((linelen + nvsz + 2))
          [ ${linelen} -gt 50 ] && {
            printf "\n\t"
            linelen=0
          }
        done
        printf "\n\n"
      fi
    }

    PS3="${BOLD}${PLEASE} (numeric or text, 'h' for help): ${NORM}"
    options=()
    if [ "${USEGUI}" ]; then
      if [ "${have_neovide}" ]; then
        if alias neovides >/dev/null 2>&1; then
          [ ${numitems} -gt 1 ] && {
            options+=("Select and Open")
            options+=("Select and Remove")
          }
        else
          options+=("Open Neovide")
          if alias nvims >/dev/null 2>&1; then
            USEGUI=
            use_gui="neovim"
            [ ${numitems} -gt 1 ] && {
              options+=("Select and Open")
              options+=("Select and Remove")
            }
          fi
        fi
      else
        USEGUI=
        use_gui="neovim"
        options+=("Install Neovide")
        if alias nvims >/dev/null 2>&1; then
          [ ${numitems} -gt 1 ] && {
            options+=("Select and Open")
            options+=("Select and Remove")
          }
        fi
      fi
    else
      if alias nvims >/dev/null 2>&1; then
        [ ${numitems} -gt 1 ] && {
          options+=("Select and Open")
          options+=("Select and Remove")
        }
      fi
    fi
    installed=1
    partial=
    get_config_str "${BASECFGS}"
    base_installed=${installed}
    options+=("Install Base ${configstr}")
    installed=1
    partial=
    get_config_str "${EXTRACFGS}"
    extra_installed=${installed}
    options+=("Install Extras ${configstr}")
    installed=1
    partial=
    get_config_str "${STARTCFGS}"
    options+=("Install Starters ${configstr}")
    installed=1
    partial=
    get_config_str "${BASECFGS} ${EXTRACFGS} ${STARTCFGS}"
    options+=("Install All ${configstr}")
    [[ "${have_figlet}" && "${have_rocks}" && "${have_tscli}" && "${have_xclip}" ]] || {
      options+=("Install Tools")
    }
    options+=("Remove Base")
    options+=("Remove Extras")
    options+=("Remove Starters")
    options+=("Remove All")
    if [ "${base_installed}" ]; then
      if [ "${extra_installed}" ]; then
        for neovim in ${STARTCFGS}; do
          if [[ ! " ${sorted[*]} " =~ " ${neovim} " ]]; then
            options+=("Install ${nvdir}")
          fi
        done
      else
        for neovim in ${EXTRACFGS}; do
          nvdir=$(echo "${neovim}" | sed -e "s/nvim-//")
          if [[ ! " ${sorted[*]} " =~ " ${nvdir} " ]]; then
            options+=("Install ${nvdir}")
          fi
        done
      fi
    else
      for neovim in "${basenvimdirs[@]}"; do
        nvdir=$(echo "${neovim}" | sed -e "s/nvim-//")
        if [[ ! " ${sorted[*]} " =~ " ${nvdir} " ]]; then
          options+=("Install ${nvdir}")
        fi
      done
    fi
    for neovim in "${sorted[@]}"; do
      options+=("Open ${neovim}")
    done
    if [ "${have_neovide}" ]; then
      options+=("Toggle [${use_gui}]")
    fi
    options+=("Lazyman Configuration")
    options+=("Lazyman Status")
    [ "${have_brew}" ] && {
      options+=("Homebrew Upgrade")
    }
    options+=("Quit")
    select opt in "${options[@]}"; do
      case "$opt,$REPLY" in
        "h",* | *,"h" | "H",* | *,"H" | "help",* | *,"help" | "Help",* | *,"Help")
          [ "$debug" ] || clear
          printf "\n"
          man lazyman
          break
          ;;
        "Select and Open"*,* | *,"Select and Open"*)
          if [ "${USEGUI}" ]; then
            neovselect
          else
            nvimselect
          fi
          break
          ;;
        "Select and Remove"*,* | *,"Select and Remove"*)
          if [ "${USEGUI}" ]; then
            neovselect -r
          else
            nvimselect -r
          fi
          break
          ;;
        "Install Base"*,* | *,"Install Base"*)
          lazyman -A -y -z
          break
          ;;
        "Install Extra"*,* | *,"Install Extra"*)
          lazyman -W -y -z
          break
          ;;
        "Install Starter"*,* | *,"Install Starter"*)
          lazyman -X -y -z
          break
          ;;
        "Install All"*,* | *,"Install All"*)
          lazyman -A -y -z
          lazyman -W -y -z
          lazyman -X -y -z
          break
          ;;
        "Install Tools"*,* | *,"Install Tools"*)
          lazyman -I
          set_haves
          break
          ;;
        "Install Neovide"*,* | *,"Install Neovide"*)
          [ "${have_cargo}" ] || {
            printf "\nNeovide build requires cargo but cargo not found.\n"
            while true; do
              read -r -p "Do you wish to install cargo now ? (y/n) " yn
              case $yn in
                [Yy]*)
                  printf "\nInstalling cargo ..."
                  if [ "${have_brew}" ]; then
                    brew install rust >/dev/null 2>&1
                  else
                    RUST_URL="https://sh.rustup.rs"
                    curl -fsSL "${RUST_URL}" >/tmp/rust-$$.sh
                    [ $? -eq 0 ] || {
                      rm -f /tmp/rust-$$.sh
                      curl -kfsSL "${RUST_URL}" >/tmp/rust-$$.sh
                      [ -f /tmp/rust-$$.sh ] && {
                        cat /tmp/rust-$$.sh | sed -e "s/--show-error/--insecure --show-error/" >/tmp/ins$$
                        cp /tmp/ins$$ /tmp/rust-$$.sh
                        rm -f /tmp/ins$$
                      }
                    }
                    [ -f /tmp/rust-$$.sh ] && sh /tmp/rust-$$.sh -y >/dev/null 2>&1
                    rm -f /tmp/rust-$$.sh
                  fi
                  printf " done"
                  break
                  ;;
                [Nn]*)
                  printf "\nAborting cargo and neovide install\n"
                  break 2
                  ;;
                *)
                  printf "\nPlease answer yes or no.\n"
                  ;;
              esac
            done
            have_cargo=$(type -p cargo)
          }
          if [ "${have_cargo}" ]; then
            printf "\nBuilding Neovide GUI, please be patient ... "
            cargo install --git https://github.com/neovide/neovide >/dev/null 2>&1
            printf "done\n"
            have_neovide=$(type -p neovide)
          else
            printf "\nCannot locate cargo. Perhaps it is not in your PATH."
            printf "\nUnable to build Neovide"
          fi
          [ -f "${LMANDIR}"/.lazymanrc ] && {
            source "${LMANDIR}"/.lazymanrc
          }
          break
          ;;
        "Install "*,* | *,"Install "*)
          nvimconf=$(echo ${opt} | awk ' { print $2 } ')
          case ${nvimconf} in
            AstroNvim)
              lazyman -a -z -y
              ;;
            Ecovim)
              lazyman -e -z -y
              ;;
            Kickstart)
              lazyman -k -z -y
              ;;
            Lazyman)
              lazyman -i -z -y
              ;;
            LazyVim)
              lazyman -l -z -y
              ;;
            LunarVim)
              lazyman -v -z -y
              ;;
            NvChad)
              lazyman -c -z -y
              ;;
            SpaceVim)
              lazyman -s -z -y
              ;;
            MagicVim)
              lazyman -m -z -y
              ;;
            Nv)
              lazyman -w Nv -z -y
              ;;
            Knmac)
              lazyman -w Knmac -z -y
              ;;
            Roiz)
              lazyman -w Roiz -z -y
              ;;
            Fennel)
              lazyman -w Fennel -z -y
              ;;
            NvPak)
              lazyman -w NvPak -z -y
              ;;
            Optixal)
              lazyman -w Optixal -z -y
              ;;
            Plug)
              lazyman -w Plug -z -y
              ;;
            Heiker)
              lazyman -w Heiker -z -y
              ;;
            Minimal)
              lazyman -x Minimal -z -y
              ;;
            Simple)
              lazyman -w Simple -z -y
              ;;
            StartBase)
              lazyman -x StartBase -z -y
              ;;
            Opinion)
              lazyman -x Opinion -z -y
              ;;
            StartLsp)
              lazyman -x StartLsp -z -y
              ;;
            StartMason)
              lazyman -x StartMason -z -y
              ;;
            Modular)
              lazyman -x Modular -z -y
              ;;
          esac
          break
          ;;
        "Open Neovide"*,* | *,"Open Neovide"*)
          NVIM_APPNAME="${LAZYMAN}" neovide
          break
          ;;
        "Open "*,* | *,"Open "*)
          nvimconf=$(echo ${opt} | awk ' { print $2 } ')
          if [ -d "${HOME}/.config/nvim-${nvimconf}" ]; then
            if [ "${USEGUI}" ]; then
              NVIM_APPNAME="nvim-${nvimconf}" neovide
            else
              NVIM_APPNAME="nvim-${nvimconf}" nvim
            fi
          else
            if [ -d "${HOME}/.config/${nvimconf}" ]; then
              if [ "${USEGUI}" ]; then
                NVIM_APPNAME="${nvimconf}" neovide
              else
                NVIM_APPNAME="${nvimconf}" nvim
              fi
            else
              printf "\nCannot locate ${nvimconf} Neovim configuration\n"
              printf "\nPress Enter to continue\n"
              read -r yn
            fi
          fi
          break
          ;;
        "Remove Base"*,* | *,"Remove Base"*)
          lazyman -R -A -y
          break
          ;;
        "Remove Extra"*,* | *,"Remove Extra"*)
          lazyman -R -W -y
          break
          ;;
        "Remove Starter"*,* | *,"Remove Starter"*)
          lazyman -R -X -y
          break
          ;;
        "Remove All"*,* | *,"Remove All"*)
          for ndirm in "${ndirs[@]}"; do
            [ "${ndirm}" == "${LAZYMAN}" ] && continue
            [ "${ndirm}" == "nvim" ] && continue
            lazyman -R -N ${ndirm} -y
          done
          break
          ;;
        "Toggle"*,* | *,"Toggle"*)
          if [ "${USEGUI}" ]; then
            USEGUI=
          else
            USEGUI=1
          fi
          break
          ;;
        "Lazyman Configuration",* | *,"Lazyman Configuration")
          show_conf_menu
          break
          ;;
        "Lazyman Status",* | *,"Lazyman Status")
          show_info >/tmp/lminfo$$
          if [ "${USEGUI}" ]; then
            NVIM_APPNAME="${LAZYMAN}" neovide /tmp/lminfo$$
          else
            NVIM_APPNAME="${LAZYMAN}" nvim /tmp/lminfo$$
          fi
          rm -f /tmp/lminfo$$
          break
          ;;
        "Homebrew Upgrade",* | *,"Homebrew Upgrade")
          printf "Upgrading Homebrew packages with 'brew upgrade' ..."
          brew update --quiet >/dev/null 2>&1
          brew upgrade --quiet >/dev/null 2>&1
          printf " done"
          break
          ;;
        "Quit",* | *,"Quit" | "quit",* | *,"quit")
          printf "\nExiting Lazyman\n"
          exit 0
          ;;
        *,*)
          printf "\nCould not match '${REPLY}' with a menu entry."
          printf "\nPlease try again with an exact match.\n"
          [ "${have_figlet}" ] && show_figlet
          ;;
      esac
      REPLY=
    done
  done
}

get_config_str() {
  CFGS="$1"
  for cfg in ${CFGS}; do
    inst=
    for bdir in "${sorted[@]}"; do
      [[ $cfg == "$bdir" ]] && {
        partial=1
        inst=1
        break
      }
    done
    [ "${inst}" ] || installed=
  done
  if [ "${installed}" ]; then
    configstr=" "
  else
    if [ "${partial}" ]; then
      configstr=" "
    else
      configstr=""
    fi
  fi
}

set_starter_branch() {
  starter="$1"
  case ${starter} in
    Minimal)
      startbranch="00-minimal"
      ;;
    StartBase)
      startbranch="01-base"
      ;;
    Opinion)
      startbranch="02-opinionated"
      ;;
    StartLsp)
      startbranch="03-lsp"
      ;;
    StartMason)
      startbranch="04-lsp-installer"
      ;;
    Modular)
      startbranch="05-modular"
      ;;
    *)
      printf "\nUnrecognized nvim-starter configuration: ${nvimstarter}"
      printf "\nPress Enter to continue\n"
      read -r yn
      usage
      ;;
  esac
}

all=
branch=
instnvim=1
subdir=
command=
debug=
invoke=
confmenu=
langservers=
tellme=
astronvim=
ecovim=
kickstart=
lazyman=
lazyvim=
lunarvim=
magicvim=
nvchad=
nvimextra=
nvimstarter=
spacevim=
plug=
packer=
proceed=
quiet=
remove=
removeall=
runvim=1
select=
update=
url=
name=
pmgr="Lazy"
lazymandir="${LAZYMAN}"
astronvimdir="nvim-AstroNvim"
ecovimdir="nvim-Ecovim"
kickstartdir="nvim-Kickstart"
lazyvimdir="nvim-LazyVim"
lunarvimdir="nvim-LunarVim"
nvchaddir="nvim-NvChad"
spacevimdir="nvim-SpaceVim"
magicvimdir="nvim-MagicVim"
basenvimdirs=("$lazymandir" "$lazyvimdir" "$magicvimdir" "$spacevimdir" "$ecovimdir" "$astronvimdir" "$nvchaddir" "$lunarvimdir")
nvimdir=()
while getopts "aAb:cdD:eE:FiIklmnL:pPqrRsSUC:N:vw:Wx:XyzZu" flag; do
  case $flag in
    a)
      astronvim=1
      nvimdir=("$astronvimdir")
      ;;
    A)
      all=1
      astronvim=1
      ecovim=1
      lazyman=1
      lazyvim=1
      lunarvim=1
      magicvim=1
      nvchad=1
      spacevim=1
      nvimdir=("${basenvimdirs[@]}")
      ;;
    b)
      branch="$OPTARG"
      ;;
    c)
      nvchad=1
      nvimdir=("$nvchaddir")
      ;;
    d)
      debug="-d"
      ;;
    e)
      ecovim=1
      nvimdir=("$ecovimdir")
      ;;
    E)
      invoke="$OPTARG"
      ;;
    F)
      confmenu=1
      ;;
    i)
      lazyman=1
      nvimdir=("${lazymandir}")
      ;;
    I)
      langservers=1
      ;;
    k)
      kickstart=1
      nvimdir=("$kickstartdir")
      ;;
    l)
      lazyvim=1
      nvimdir=("$lazyvimdir")
      ;;
    L)
      command="$OPTARG"
      ;;
    m)
      magicvim=1
      nvimdir=("$magicvimdir")
      ;;
    n)
      tellme=1
      ;;
    p)
      plug=1
      pmgr="Plug"
      ;;
    P)
      packer=1
      pmgr="Packer"
      ;;
    q)
      quiet=1
      ;;
    r)
      remove=1
      ;;
    R)
      remove=1
      removeall=1
      ;;
    s)
      spacevim=1
      nvimdir=("$spacevimdir")
      ;;
    S)
      select=1
      ;;
    C)
      url="$OPTARG"
      ;;
    D)
      subdir="$OPTARG"
      ;;
    N)
      name="$OPTARG"
      ;;
    U)
      update=1
      ;;
    v)
      lunarvim=1
      nvimdir=("$lunarvimdir")
      ;;
    w)
      nvimextra="$OPTARG"
      ;;
    W)
      nvimextra="all"
      ;;
    x)
      nvimstarter="$OPTARG"
      ;;
    X)
      nvimstarter="all"
      ;;
    y)
      proceed=1
      ;;
    z)
      runvim=
      ;;
    Z)
      instnvim=
      ;;
    u)
      usage
      ;;
    *)
      printf "\nUnrecognized option. Exiting.\n"
      usage
      ;;
  esac
done
shift $((OPTIND - 1))

[ "$select" ] && {
  if [ -f "${LMANDIR}"/.lazymanrc ]; then
    source "${LMANDIR}"/.lazymanrc
  else
    printf "\nWARNING: missing ${LMANDIR}/.lazymanrc"
    printf "\nReinstall Lazyman with:"
    printf "\n\tlazyman -R -N ${LAZYMAN}"
    printf "\n\tlazyman\n"
  fi
  if alias nvims >/dev/null 2>&1; then
    nvimselect "$@"
  fi
  exit 0
}

[ "$nvimextra" ] && {
  if [ "$remove" ]; then
    if [ "${nvimextra}" == "all" ]; then
      for neovim in Nv Knmac Roiz Fennel NvPak Optixal Plug Heiker Simple; do
        remove_config "nvim-${neovim}"
      done
    else
      remove_config "nvim-${nvimextra}"
    fi
  else
    yesflag=
    [ "${proceed}" ] && yesflag="-y"
    quietflag=
    [ "${quiet}" ] && quietflag="-q"
    if [ "${nvimextra}" == "all" ]; then
      action="Installing"
      [ -d ${HOME}/.config/nvim-Nv ] && action="Updating"
      printf "\n${action} Nv Neovim configuration ..."
      lazyman -C https://github.com/appelgriebsch/Nv \
        -N nvim-Nv -q -z ${yesflag}
      printf " done"
      show_alias "nvim-Nv"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Knmac ] && action="Updating"
      printf "\n${action} Knmac Neovim configuration ..."
      lazyman -C https://github.com/knmac/.dotfiles \
        -D nvim/.config/nvim -N nvim-Knmac -q -z ${yesflag}
      printf " done"
      show_alias "nvim-Knmac"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Fennel ] && action="Updating"
      printf "\n${action} Fennel Neovim configuration ..."
      lazyman -C https://github.com/jhchabran/nvim-config \
        -N nvim-Fennel -P -q -z ${yesflag}
      printf " done"
      show_alias "nvim-Fennel"
      action="Installing"
      [ -d ${HOME}/.config/nvim-NvPak ] && action="Updating"
      printf "\n${action} NvPak Neovim configuration ..."
      lazyman -C https://github.com/Pakrohk-DotFiles/NvPak.git \
        -N nvim-NvPak -q -z ${yesflag}
      printf " done"
      show_alias "nvim-NvPak"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Optixal ] && action="Updating"
      printf "\n${action} Optixal Neovim configuration ..."
      lazyman -C https://github.com/Optixal/neovim-init.vim \
        -N nvim-Optixal -p -q -z ${yesflag}
      printf " done"
      show_alias "nvim-Optixal"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Plug ] && action="Updating"
      printf "\n${action} Plug Neovim configuration ..."
      lazyman -C https://github.com/doctorfree/nvim-plug \
        -N nvim-Plug -p -q -z ${yesflag}
      printf " done"
      show_alias "nvim-Plug"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Heiker ] && action="Updating"
      printf "\n${action} VonHeikemen Neovim configuration ..."
      lazyman -C https://github.com/VonHeikemen/dotfiles \
        -D my-configs/neovim -N nvim-Heiker -q -z ${yesflag}
      printf " done"
      show_alias "nvim-Heiker"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Roiz ] && action="Updating"
      printf "\n${action} Roiz Neovim configuration ..."
      lazyman -b main -C https://github.com/MrRoiz/rnvim \
        -N nvim-Roiz -q -z ${yesflag}
      printf " done\n"
      show_alias "nvim-Roiz"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Simple ] && action="Updating"
      printf "\n${action} Simple Neovim configuration ..."
      lazyman -C https://github.com/anthdm/.nvim \
        -N nvim-Simple -P -q -z ${yesflag}
      printf " done"
      show_alias "nvim-Simple"
    else
      extra_url=
      extra_dir=
      extra_opt=
      runflag=
      [ "${runvim}" ] || runflag="-z"
      case ${nvimextra} in
        Knmac)
          extra_url="https://github.com/knmac/.dotfiles"
          extra_dir="-D nvim/.config/nvim"
          ;;
        Roiz)
          extra_url="https://github.com/MrRoiz/rnvim"
          ;;
        Fennel)
          extra_url="https://github.com/jhchabran/nvim-config"
          extra_opt="-P"
          ;;
        Nv)
          extra_url="https://github.com/appelgriebsch/Nv"
          ;;
        NvPak)
          extra_url="https://github.com/Pakrohk-DotFiles/NvPak.git"
          ;;
        Optixal)
          extra_url="https://github.com/Optixal/neovim-init.vim"
          extra_opt="-p"
          ;;
        Plug)
          extra_url="https://github.com/doctorfree/nvim-plug"
          extra_opt="-p"
          ;;
        Heiker)
          extra_url="https://github.com/VonHeikemen/dotfiles"
          extra_dir="-D my-configs/neovim"
          ;;
        Simple)
          extra_url="https://github.com/anthdm/.nvim"
          extra_opt="-P"
          ;;
        *)
          printf "\nUnrecognized extra configuration: ${nvimextra}"
          printf "\nPress Enter to continue\n"
          read -r yn
          usage
          ;;
      esac
      action="Installing"
      [ -d ${HOME}/.config/nvim-${nvimextra} ] && action="Updating"
      printf "\n${action} ${nvimextra} Neovim configuration ..."
      lazyman -C ${extra_url} -N nvim-${nvimextra} ${extra_dir} ${extra_opt} \
        ${quietflag} ${runflag} ${yesflag}
      printf " done"
    fi
  fi
  exit 0
}

[ "$nvimstarter" ] && {
  if [ "$remove" ]; then
    if [ "${nvimstarter}" == "all" ]; then
      for neovim in Minimal StartBase Opinion StartLsp StartMason Modular; do
        remove_config "nvim-${neovim}"
      done
      remove_config "nvim-Kickstart"
    else
      remove_config "nvim-${nvimstarter}"
    fi
  else
    yesflag=
    [ "${proceed}" ] && yesflag="-y"
    quietflag=
    [ "${quiet}" ] && quietflag="-q"
    if [ "${nvimstarter}" == "all" ]; then
      for neovim in Minimal StartBase Opinion StartLsp StartMason Modular; do
        startbranch=
        set_starter_branch "${neovim}"
        [ "${startbranch}" ] || usage
        action="Installing"
        [ -d ${HOME}/.config/nvim-${neovim} ] && action="Updating"
        printf "\n${action} nvim-starter ${neovim} Neovim configuration ..."
        lazyman -C https://github.com/VonHeikemen/nvim-starter \
          -N nvim-${neovim} -b ${startbranch} -q -z ${yesflag}
        printf " done"
        show_alias "nvim-${neovim}"
      done
      action="Installing"
      [ -d ${HOME}/.config/nvim-Kickstart ] && action="Updating"
      printf "\n${action} Kickstart Neovim configuration ..."
      lazyman -k -q -z ${yesflag}
      printf " done"
      show_alias "nvim-Kickstart"
    else
      runflag=
      [ "${runvim}" ] || runflag="-z"
      startbranch=
      set_starter_branch "${nvimstarter}"
      [ "${startbranch}" ] || usage
      action="Installing"
      [ -d ${HOME}/.config/nvim-${nvimstarter} ] && action="Updating"
      printf "\n${action} nvim-starter ${nvimstarter} Neovim configuration ..."
      lazyman -C https://github.com/VonHeikemen/nvim-starter \
        -N nvim-${nvimstarter} -b ${startbranch} \
        ${quietflag} ${runflag} ${yesflag}
      printf " done"
    fi
  fi
  printf "\n"
  exit 0
}

[ "$langservers" ] && {
  [ "${instnvim}" ] || {
    printf "\n\n-I and -Z are incompatible options."
    printf "\nThe '-I' option indicates install tools."
    printf "\nThe '-Z' option indicates do not install tools."
    brief_usage
  }
  if [ -x "${HOME}/.config/${lazymandir}/scripts/install_neovim.sh" ]; then
    "${HOME}/.config/${lazymandir}"/scripts/install_neovim.sh "$debug"
    exit 0
  fi
  exit 1
}

[ "$url" ] && {
  [ "$name" ] || {
    printf "\nERROR: '-C url' must be accompanied with '-N nvimdir'\n"
    brief_usage
  }
}
[ "$all" ] && [ "$name" ] && {
  printf "\nERROR: '-A' cannot be used with '-N nvimdir'\n"
  brief_usage
}
[ "$packer" ] && [ "$plug" ] && {
  printf "\nERROR: '-P' cannot be used with '-p'"
  printf "\nOnly one plugin manager can be specified\n"
  brief_usage
}
# Support specifying '-N nvimdir' with supported configurations
# This breaks subsequent '-E' invocations for that config
[ "$name" ] && {
  numvim=0
  [ "$astronvim" ] && numvim=$((numvim + 1))
  [ "$ecovim" ] && numvim=$((numvim + 1))
  [ "$kickstart" ] && numvim=$((numvim + 1))
  [ "$lazyvim" ] && numvim=$((numvim + 1))
  [ "$lazyman" ] && numvim=$((numvim + 1))
  [ "$lunarvim" ] && numvim=$((numvim + 1))
  [ "$magicvim" ] && numvim=$((numvim + 1))
  [ "$nvchad" ] && numvim=$((numvim + 1))
  [ "$spacevim" ] && numvim=$((numvim + 1))
  [ "$numvim" -gt 1 ] && {
    printf "\nERROR: multiple Neovim configs cannot be used with '-N nvimdir'\n"
    brief_usage
  }
  [ "$astronvim" ] && astronvimdir="$name"
  [ "$ecovim" ] && ecovimdir="$name"
  [ "$kickstart" ] && kickstartdir="$name"
  [ "$lazyman" ] && lazymandir="$name"
  [ "$lazyvim" ] && lazyvimdir="$name"
  [ "$lunarvim" ] && lunarvimdir="$name"
  [ "$magicvim" ] && magicvimdir="$name"
  [ "$nvchad" ] && nvchaddir="$name"
  [ "$spacevim" ] && spacevimdir="$name"
  [ "$numvim" -eq 1 ] && {
    [ "$quiet" ] || {
      printf "\nWARNING: Specifying '-N nvimdir' will change the configuration location"
      printf "\n\tof a supported config to ${name}"
      printf "\n\tThis will make it incompatible with '-E <config>' in subsequent runs\n"
    }
    [ "$proceed" ] || {
      printf "\nDo you wish to proceed with this non-standard initialization?"
      while true; do
        read -r -p "Proceed with config in ${name} ? (y/n) " yn
        case $yn in
          [Yy]*)
            break
            ;;
          [Nn]*)
            printf "\nAborting install and exiting\n"
            exit 0
            ;;
          *)
            printf "\nPlease answer yes or no.\n"
            ;;
        esac
      done
    }
  }
}

[ "$invoke" ] && {
  nvimlower=$(echo "$invoke" | tr '[:upper:]' '[:lower:]')
  case "$nvimlower" in
    astronvim)
      ndir="$astronvimdir"
      ;;
    ecovim)
      ndir="$ecovimdir"
      ;;
    kickstart)
      ndir="$kickstartdir"
      ;;
    lazyman)
      ndir="$lazymandir"
      ;;
    lazyvim)
      ndir="$lazyvimdir"
      ;;
    lunarvim)
      ndir="$lunarvimdir"
      ;;
    nvchad)
      ndir="$nvchaddir"
      ;;
    magicvim)
      ndir="$magicvimdir"
      ;;
    spacevim)
      ndir="$spacevimdir"
      ;;
    *)
      ndir="$invoke"
      ;;
  esac
  [ -d "${HOME}/.config/${ndir}" ] || {
    printf "\nNeovim configuration for ${ndir} not found"
    printf "\nExiting\n"
    exit 1
  }
  export NVIM_APPNAME="$ndir"
  nvim "$@"
  exit 0
}

[ "$name" ] && nvimdir=("$name")

[ "$remove" ] && {
  for neovim in "${nvimdir[@]}"; do
    [ "${all}" ] && [ "${neovim}" == "${lazymandir}" ] && continue
    remove_config "$neovim"
  done
  exit 0
}

[ "$command" ] && {
  [ "$all" ] || [ "$name" ] || {
    [ "$NVIM_APPNAME" ] && nvimdir=("$NVIM_APPNAME")
  }
  for neovim in "${nvimdir[@]}"; do
    run_command "$neovim" "$command"
  done
  exit 0
}

[ "$update" ] && {
  [ "$all" ] || [ "$name" ] || {
    [ "$NVIM_APPNAME" ] && nvimdir=("$NVIM_APPNAME")
  }
  for neovim in "${nvimdir[@]}"; do
    update_config "$neovim"
    [ "$tellme" ] || {
      init_neovim "$neovim"
    }
  done
  exit 0
}

have_git=$(type -p git)
[ "$have_git" ] || {
  have_brew=$(type -p brew)
  [ "$have_brew" ] && {
    brew install git >/dev/null 2>&1
  }
  have_git=$(type -p git)
  [ "$have_git" ] || {
    printf "\nLazyman requires git but git not found"
    printf "\nPlease install git and retry this lazyman command\n"
    brief_usage
  }
}

interactive=
numvimdirs=${#nvimdir[@]}
[ ${numvimdirs} -eq 0 ] && {
  nvimdir=("${lazymandir}")
  interactive=1
}
if [ -d "${HOME}/.config/${lazymandir}" ]; then
  [ "$branch" ] && {
    git -C "${HOME}/.config/${lazymandir}" checkout "$branch" >/dev/null 2>&1
  }
  [ -d "${HOME}/.local/share/${lazymandir}" ] || interactive=
else
  [ "$quiet" ] || {
    printf "\nCloning ${LAZYMAN} configuration into"
    printf "\n\t${HOME}/.config/${lazymandir} ... "
  }
  [ "$tellme" ] || {
    git clone https://github.com/doctorfree/nvim-lazyman \
      "${HOME}/.config/${lazymandir}" >/dev/null 2>&1
    [ "$branch" ] && {
      git -C "${HOME}/.config/${lazymandir}" checkout "$branch" >/dev/null 2>&1
    }
  }
  [ "$quiet" ] || printf "done"
  interactive=
fi
# Always make sure nvim-Lazyman is in .nvimdirs
[ "$tellme" ] || {
  add_nvimdirs_entry "${lazymandir}"
}

# Append sourcing of .lazymanrc to shell initialization files
if [ -f "${LMANDIR}"/.lazymanrc ]; then
  for shinit in bashrc zshrc; do
    [ -f "${HOME}/.$shinit" ] || continue
    grep lazymanrc "${HOME}/.$shinit" >/dev/null && continue
    COMM="# Source the Lazyman shell initialization for aliases and nvims selector"
    echo "$COMM" >>"${HOME}/.$shinit"
    SHCK="# shellcheck source=.config/nvim-Lazyman/.lazymanrc"
    echo "$SHCK" >>"${HOME}/.$shinit"
    TEST_SRC="[ -f ~/.config/${LAZYMAN}/.lazymanrc ] &&"
    SOURCE="source ~/.config/${LAZYMAN}/.lazymanrc"
    echo "${TEST_SRC} ${SOURCE}" >>"${HOME}/.$shinit"
  done
  # Append sourcing of .nvimsbind to shell initialization files
  [ -f "${HOME}/.config/${lazymandir}"/.nvimsbind ] && {
    for shinit in bashrc zshrc; do
      [ -f "${HOME}/.$shinit" ] || continue
      grep nvimsbind "${HOME}/.$shinit" >/dev/null && continue
      COMM="# Source the Lazyman .nvimsbind for nvims key binding"
      echo "$COMM" >>"${HOME}/.$shinit"
      SHCK="# shellcheck source=.config/nvim-Lazyman/.nvimsbind"
      echo "$SHCK" >>"${HOME}/.$shinit"
      TEST_SRC="[ -f ~/.config/${LAZYMAN}/.nvimsbind ] &&"
      SOURCE="source ~/.config/${LAZYMAN}/.nvimsbind"
      echo "${TEST_SRC} ${SOURCE}" >>"${HOME}/.$shinit"
    done
  }
else
  printf "\nWARNING: missing ${LMANDIR}/.lazymanrc"
  printf "\nReinstall Lazyman with:"
  printf "\n\tlazyman -R -N ${LAZYMAN}"
  printf "\n\tlazyman\n"
fi

# Enable ChatGPT plugin if OPENAI_API_KEY set
set_chat_gpt
[ -f ${CONFBACK} ] || {
  cp ${NVIMCONF} ${CONFBACK}
}

currlimit=$(ulimit -n)
hardlimit=$(ulimit -Hn)
[ "$hardlimit" == "unlimited" ] && hardlimit=9999
if [ "$hardlimit" -gt 4096 ]; then
  [ "$tellme" ] || ulimit -n 4096
else
  [ "$tellme" ] || ulimit -n "$hardlimit"
fi

[ "${instnvim}" ] && {
  if [ -x "${HOME}/.config/${lazymandir}/scripts/install_neovim.sh" ]; then
    "${HOME}/.config/${lazymandir}"/scripts/install_neovim.sh "$debug"
    BREW_EXE=
    set_brew
    [ "$BREW_EXE" ] && eval "$("$BREW_EXE" shellenv)"
    have_nvim=$(type -p nvim)
    [ "$have_nvim" ] || {
      printf "\nERROR: cannot locate neovim."
      printf "\nHomebrew install failure, manual debug required."
      printf "\n\t'brew update && lazyman -d'."
      printf "\nNeovim 0.9 or later required. Install and retry. Exiting.\n"
      brief_usage
    }
  else
    printf "\n${HOME}/.config/${lazymandir}/scripts/install_neovim.sh not executable"
    printf "\nPlease check the Lazyman installation and retry this install script\n"
    brief_usage
  fi
}

for neovim in "${nvimdir[@]}"; do
  [ "$neovim" == "${lazymandir}" ] && continue
  if [ "$proceed" ]; then
    update_config "$neovim"
  else
    [ -d "${HOME}/.config/$neovim" ] && {
      printf "\nYou have requested installation of the ${neovim} Neovim configuration."
      printf "\nIt appears there is a previously installed Neovim configuration at:"
      printf "\n\t${HOME}/.config/${neovim}\n"
      printf "\nThe existing Neovim configuration can be updated or backed up.\n"
      while true; do
        read -r -p "Update ${neovim} ? (y/n) " yn
        case $yn in
          [Yy]*)
            update_config "$neovim"
            break
            ;;
          [Nn]*)
            create_backups "$neovim"
            break
            ;;
          *)
            echo "Please answer yes or no."
            ;;
        esac
      done
    }
  fi
done

[ "$astronvim" ] && {
  clone_repo AstroNvim AstroNvim/AstroNvim "$astronvimdir"
  [ "$quiet" ] || {
    printf "\nAdding user configuration into"
    printf "\n\t${HOME}/.config/${astronvimdir}/lua/user ... "
  }
  [ "$tellme" ] || {
    if [ -d "${HOME}/.config/$astronvimdir"/lua/user ]; then
      update_config "$astronvimdir"/lua/user
    else
      git clone https://github.com/doctorfree/astronvim \
        "${HOME}/.config/$astronvimdir"/lua/user >/dev/null 2>&1
    fi
  }
  [ "$quiet" ] || printf "done"
}
[ "$ecovim" ] && {
  clone_repo Ecovim ecosse3/nvim "$ecovimdir"
}
[ "$kickstart" ] && {
  clone_repo Kickstart nvim-lua/kickstart.nvim.git "$kickstartdir"
}
[ "$lazyvim" ] && {
  clone_repo LazyVim LazyVim/starter "$lazyvimdir"
}
[ "$lunarvim" ] && {
  export NVIM_APPNAME="${lunarvimdir}"
  export LUNARVIM_RUNTIME_DIR="${HOME}/.local/share/${NVIM_APPNAME}"
  export LUNARVIM_CONFIG_DIR="${HOME}/.config/${NVIM_APPNAME}"
  export LUNARVIM_CACHE_DIR="${HOME}/.cache/${NVIM_APPNAME}"
  export LUNARVIM_BASE_DIR="${HOME}/.config/${NVIM_APPNAME}"
  LVIM_URL="https://raw.githubusercontent.com/lunarvim/lunarvim"
  LVIM_INSTALL="${LVIM_URL}/master/utils/installer/install.sh"
  [ "$quiet" ] || printf "\nCloning and initializing LunarVim ... "
  [ "$tellme" ] || {
    curl -s ${LVIM_INSTALL} >/tmp/lvim-install$$.sh
    chmod 755 /tmp/lvim-install$$.sh
    [ -x $HOME/.local/bin/lvim ] || {
      [ -f ${LMANDIR}/scripts/lvim ] && {
        if [ "${lunarvimdir}" == "nvim-LunarVim" ]; then
          cp ${LMANDIR}/scripts/lvim $HOME/.local/bin/lvim
        else
          cat ${LMANDIR}/scripts/lvim \
            | sed -e "s/nvim-LunarVim/${lunarvimdir}/" >$HOME/.local/bin/lvim
        fi
        chmod 755 $HOME/.local/bin/lvim
      }
    }
    if [ "$debug" ]; then
      /tmp/lvim-install$$.sh --no-install-dependencies
    else
      /tmp/lvim-install$$.sh --no-install-dependencies >/dev/null 2>&1
    fi
    rm -f /tmp/lvim-install$$.sh
    add_nvimdirs_entry "${lunarvimdir}"
  }
  [ "$quiet" ] || printf "done"
  [ "$quiet" ] || {
    printf "\nAdding LunarVim custom configuration into"
    printf "\n\t${HOME}/.config/${lunarvimdir}/lua/user ... "
  }
  [ "$tellme" ] || {
    [ -d "${HOME}/.config/${lunarvimdir}"/lua/user ] || {
      git clone https://github.com/IfCodingWereNatural/minimal-nvim \
        "${HOME}/.config/${lunarvimdir}"/tmp$$ >/dev/null 2>&1
      [ -d "${HOME}/.config/${lunarvimdir}"/tmp$$ ] && {
        git -C "${HOME}/.config/${lunarvimdir}"/tmp$$ \
          checkout lunarvim >/dev/null 2>&1
        for folder in ftplugin lsp-settings plugin snippets lua/user; do
          cp -a "${HOME}/.config/${lunarvimdir}"/tmp$$/lvim/${folder} \
            "${HOME}/.config/${lunarvimdir}"/${folder}
        done
        cp "${HOME}/.config/${lunarvimdir}"/tmp$$/lvim/config.lua \
          "${HOME}/.config/${lunarvimdir}"/config.lua
      }
      rm -rf "${HOME}/.config/${lunarvimdir}"/tmp$$
    }
  }
  [ "$quiet" ] || printf "done"
}
[ "$magicvim" ] && {
  [ -d "${HOME}/.config/$magicvimdir" ] || {
    [ "$quiet" ] || {
      printf "\nCloning MagicVim configuration into"
      printf "\n\t${HOME}/.config/${magicvimdir} ... "
    }
    [ "$tellme" ] || {
      git clone \
        https://gitlab.com/GitMaster210/magicvim \
        "${HOME}/.config/${magicvimdir}" >/dev/null 2>&1
      add_nvimdirs_entry "$magicvimdir"
    }
    [ "$quiet" ] || printf "done"
  }
}
[ "$nvchad" ] && {
  [ -d "${HOME}/.config/$nvchaddir" ] || {
    [ "$quiet" ] || {
      printf "\nCloning NvChad configuration into"
      printf "\n\t${HOME}/.config/${nvchaddir} ... "
    }
    [ "$tellme" ] || {
      git clone https://github.com/NvChad/NvChad \
        "${HOME}/.config/${nvchaddir}" --depth 1 >/dev/null 2>&1
      add_nvimdirs_entry "$nvchaddir"
    }
    [ "$quiet" ] || {
      printf "\nAdding custom configuration into"
      printf "\n\t${HOME}/.config/${nvchaddir}/lua/custom ... "
    }
  }
  [ "$tellme" ] || {
    if [ -d "${HOME}/.config/$nvchaddir"/lua/custom ]; then
      update_config "$nvchaddir"/lua/custom
    else
      git clone https://github.com/doctorfree/NvChad-custom \
        "${HOME}/.config/$nvchaddir"/lua/custom >/dev/null 2>&1
    fi
  }
  [ "$quiet" ] || printf "done"
}
[ "$spacevim" ] && {
  clone_repo SpaceVim SpaceVim/SpaceVim "$spacevimdir"
}
[ "$url" ] && {
  if [ -d "${HOME}/.config/${nvimdir[0]}" ]; then
    [ "$quiet" ] || {
      printf "\nThe directory ${HOME}/.config/${nvimdir[0]} already exists."
    }
  else
    [ "$quiet" ] || {
      printf "\nCloning ${url} into"
      printf "\n\t${HOME}/.config/${nvimdir[0]} ... "
    }
    [ "$tellme" ] || {
      if [ "${subdir}" ]; then
        [ "${branch}" ] || branch="master"
        # Perform some git tricks here to retrieve a repo subdirectory
        mkdir /tmp/lazyman$$
        cd /tmp/lazyman$$ || {
          printf "\nCreation of /tmp/lazyman$$ temporary directory failed. Exiting."
          exit 1
        }
        git init >/dev/null 2>&1
        git remote add -f origin $url >/dev/null 2>&1
        git config core.sparseCheckout true >/dev/null 2>&1
        [ -d .git/info ] || mkdir -p .git/info
        echo "${subdir}" >>.git/info/sparse-checkout
        git pull origin ${branch} >/dev/null 2>&1
        cd || exit
        mv "/tmp/lazyman$$/${subdir}" "${HOME}/.config/${nvimdir[0]}"
        rm -rf "/tmp/lazyman$$"
      else
        git clone \
          "$url" "${HOME}/.config/${nvimdir[0]}" >/dev/null 2>&1
        [ "$branch" ] && {
          git -C "${HOME}/.config/${nvimdir[0]}" checkout "$branch" >/dev/null 2>&1
        }
      fi
      [ -f ${HOME}/.config/${nvimdir[0]}/lua/user/env.sample ] && {
        [ -f ${HOME}/.config/${nvimdir[0]}/lua/user/env.lua ] || {
          cp ${HOME}/.config/${nvimdir[0]}/lua/user/env.sample \
            ${HOME}/.config/${nvimdir[0]}/lua/user/env.lua
        }
      }
      add_nvimdirs_entry "${nvimdir[0]}"
    }
    [ "$quiet" ] || printf "done"
  fi
}

[ "$interactive" ] || {
  for neovim in "${nvimdir[@]}"; do
    [ "$quiet" ] || {
      pm="$pmgr"
      [ "$neovim" == "$spacevimdir" ] && pm="SP"
      [ "$neovim" == "$magicvimdir" ] && pm="Packer"
      printf "\nInitializing ${neovim} Neovim configuration with ${pm}"
    }
    [ "$tellme" ] || {
      init_neovim "$neovim"
    }
  done
}

[ "$tellme" ] || ulimit -n "$currlimit"

lazyinst=
if [ -f "$HOME"/.local/bin/lazyman ]; then
  [ -f "${LMANDIR}"/lazyman.sh ] && {
    diff "${LMANDIR}"/lazyman.sh "$HOME"/.local/bin/lazyman >/dev/null || lazyinst=1
  }
else
  lazyinst=1
fi
[ "$lazyinst" ] && {
  [ "$quiet" ] || {
    printf "\nInstalling lazyman command in ${HOME}/.local/bin"
    printf "\nUse 'lazyman' to explore Neovim configurations."
    printf "\nReview the lazyman usage message with 'lazyman -u'"
  }
}

maninst=
if [ -f "$HOME"/.local/share/man/man1/lazyman.1 ]; then
  [ -f "${LMANDIR}"/man/man1/lazyman.1 ] && {
    diff "${LMANDIR}"/man/man1/lazyman.1 \
      "$HOME"/.local/share/man/man1/lazyman.1 >/dev/null || maninst=1
  }
else
  maninst=1
fi
[ "$maninst" ] && {
  [ "$quiet" ] || printf "\nView the lazyman man page with 'man lazyman'"
}

[ "$quiet" ] || [ "$interactive" ] || {
  printf "\n\nTo use this lazyman installed Neovim configuration as the default,"
  printf "\nadd a line like the following to your .bashrc or .zshrc:\n"
  if [ "$all" ]; then
    printf '\n\texport NVIM_APPNAME="${LAZYMAN}"\n'
  else
    printf "\n\texport NVIM_APPNAME=\"${nvimdir[0]}\"\n"
  fi
  printf "\nTo easily switch between lazyman installed Neovim configurations,"
  printf "\nshell aliases and the 'nvims' and 'neovides' commands have been created."
  [ -f "${LMANDIR}"/.lazymanrc ] && source "${LMANDIR}"/.lazymanrc
  if ! alias nvims >/dev/null 2>&1; then
    printf "\nTo activate these aliases and the 'nvims' Neovim config switcher,"
    printf "\nlogout and login or issue the following command:"
    printf "\n\tsource ~/.config/${LAZYMAN}/.lazymanrc"
  fi
  show_alias "${nvimdir[0]}"
}
[ "$quiet" ] || {
  printf "\nRun 'lazyman' with no arguments for an interactive menu system"
  printf "\nRun 'lazyman -F' for the Lazyman Configuration menu\n"
}

[ "$tellme" ] || {
  [ "$runvim" ] && {
    [ "$all" ] && export NVIM_APPNAME="${lazymandir}"
    nvim
  }
}

[ "$lazyinst" ] && {
  [ "$tellme" ] || {
    [ -d "$HOME"/.local/bin ] || mkdir -p "$HOME"/.local/bin
    [ -f "${LMANDIR}"/lazyman.sh ] && {
      cp "${LMANDIR}"/lazyman.sh "$HOME"/.local/bin/lazyman
      chmod 755 "$HOME"/.local/bin/lazyman
    }
  }
}
[ "$maninst" ] && {
  [ "$tellme" ] || {
    [ -d "$HOME"/.local/share/man ] || mkdir -p "$HOME"/.local/share/man
    [ -d "$HOME"/.local/share/man/man1 ] || mkdir -p "$HOME"/.local/share/man/man1
    [ -f "${LMANDIR}"/man/man1/lazyman.1 ] && {
      cp "${LMANDIR}"/man/man1/lazyman.1 "$HOME"/.local/share/man/man1/lazyman.1
      chmod 644 "$HOME"/.local/share/man/man1/lazyman.1
    }
  }
}

[ "$interactive" ] && {
  if [ "$confmenu" ]; then
    show_conf_menu
  else
    show_main_menu
  fi
}
```

</details>

### Install neovim and tools

The `lazyman` command checks for a current version of Neovim and, if not found
or if the existing version is less than 0.9, invokes the `install_neovim.sh`
script to install Neovim, dependencies, language servers, and tools.

Not all language servers and tools are installed. If additional language
support is desired, it can usually be provided by Mason or Homebrew.
For example, to provide support for Composer run `brew install composer`.

The automated Neovim install performed by
[install_neovim.sh](scripts/install_neovim.sh)
executes the following on your system:

<details><summary>View the install_neovim.sh script</summary>

```bash
#!/usr/bin/env bash
#
# Copyright (C) 2023 Ronald Record <ronaldrecord@gmail.com>
# Copyright (C) 2022 Michael Peter <michaeljohannpeter@gmail.com>
#
# Install Neovim and all dependencies for the Neovim config at:
#     https://github.com/doctorfree/nvim-lazyman
#
# shellcheck disable=SC2001,SC2016,SC2006,SC2086,SC2181,SC2129,SC2059

DOC_HOMEBREW="https://docs.brew.sh"
BREW_EXE="brew"
export PATH=${HOME}/.local/bin:${PATH}

abort() {
  printf "\nERROR: %s\n" "$@" >&2
  exit 1
}

log() {
  [ "$quiet" ] || {
    printf "\n\t%s" "$@"
  }
}

check_prerequisites() {
  if [ "${BASH_VERSION:-}" = "" ]; then
    abort "Bash is required to interpret this script."
  fi
  [ "${BASH_VERSINFO:-0}" -ge 4 ] || install_bash=1

  if [[ $EUID -eq 0 ]]; then
    abort "Script must not be run as root user"
  fi

  arch=$(uname -m)
  if [[ $arch =~ "arm" || $arch =~ "aarch64" ]]; then
    abort "Only amd64/x86_64 is supported"
  fi
}

install_homebrew() {
  if ! command -v brew >/dev/null 2>&1; then
    [ "$debug" ] && START_SECONDS=$(date +%s)
    log "Installing Homebrew ..."
    BREW_URL="https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh"
    have_curl=$(type -p curl)
    [ "$have_curl" ] || abort "The curl command could not be located."
    curl -fsSL "$BREW_URL" >/tmp/brew-$$.sh
    [ $? -eq 0 ] || {
      rm -f /tmp/brew-$$.sh
      curl -kfsSL "$BREW_URL" >/tmp/brew-$$.sh
    }
    [ -f /tmp/brew-$$.sh ] || abort "Brew install script download failed"
    chmod 755 /tmp/brew-$$.sh
    NONINTERACTIVE=1 /bin/bash -c "/tmp/brew-$$.sh" >/dev/null 2>&1
    rm -f /tmp/brew-$$.sh
    export HOMEBREW_NO_INSTALL_CLEANUP=1
    export HOMEBREW_NO_ENV_HINTS=1
    export HOMEBREW_NO_AUTO_UPDATE=1
    [ "$quiet" ] || printf " done"
    if [ -f "$HOME"/.profile ]; then
      BASHINIT="${HOME}/.profile"
    else
      if [ -f "$HOME"/.bashrc ]; then
        BASHINIT="${HOME}/.bashrc"
      else
        BASHINIT="${HOME}/.profile"
      fi
    fi
    if [ -x /home/linuxbrew/.linuxbrew/bin/brew ]; then
      HOMEBREW_HOME="/home/linuxbrew/.linuxbrew"
      BREW_EXE="${HOMEBREW_HOME}/bin/brew"
    else
      if [ -x /usr/local/bin/brew ]; then
        HOMEBREW_HOME="/usr/local"
        BREW_EXE="${HOMEBREW_HOME}/bin/brew"
      else
        if [ -x /opt/homebrew/bin/brew ]; then
          HOMEBREW_HOME="/opt/homebrew"
          BREW_EXE="${HOMEBREW_HOME}/bin/brew"
        else
          abort "Homebrew brew executable could not be located"
        fi
      fi
    fi

    if [ -f "$BASHINIT" ]; then
      grep "eval \"\$(${BREW_EXE} shellenv)\"" "$BASHINIT" >/dev/null || {
        echo 'if [ -x XXX ]; then' | sed -e "s%XXX%${BREW_EXE}%" >>"$BASHINIT"
        echo '  eval "$(XXX shellenv)"' | sed -e "s%XXX%${BREW_EXE}%" >>"$BASHINIT"
        echo 'fi' >>"$BASHINIT"
      }
      grep "eval \"\$(zoxide init" "$BASHINIT" >/dev/null || {
        echo 'if command -v zoxide > /dev/null; then' >>"$BASHINIT"
        echo '  eval "$(zoxide init bash)"' >>"$BASHINIT"
        echo 'fi' >>"$BASHINIT"
      }
      #     grep "Lazyman/scripts/asdf" "$BASHINIT" >/dev/null || {
      #       echo "# Source the ASDF tool version manager init script" >>"$BASHINIT"
      #       echo '# This needs to come after PATH has been setup' >>"$BASHINIT"
      #       echo 'if [ -f ~/.config/nvim-Lazyman/scripts/asdfrc ]' >>"$BASHINIT"
      #       echo 'then' >>"$BASHINIT"
      #       echo '  source ~/.config/nvim-Lazyman/scripts/asdfrc' >>"$BASHINIT"
      #       echo 'fi' >>"$BASHINIT"
      #     }
    else
      echo 'if [ -x XXX ]; then' | sed -e "s%XXX%${BREW_EXE}%" >"$BASHINIT"
      echo '  eval "$(XXX shellenv)"' | sed -e "s%XXX%${BREW_EXE}%" >>"$BASHINIT"
      echo 'fi' >>"$BASHINIT"

      echo 'if command -v zoxide > /dev/null; then' >>"$BASHINIT"
      echo '  eval "$(zoxide init bash)"' >>"$BASHINIT"
      echo 'fi' >>"$BASHINIT"

      #     echo "# Source the ASDF tool version manager init script" >>"$BASHINIT"
      #     echo '# This needs to come after PATH has been setup' >>"$BASHINIT"
      #     echo 'if [ -f ~/.config/nvim-Lazyman/scripts/asdfrc ]' >>"$BASHINIT"
      #     echo 'then' >>"$BASHINIT"
      #     echo '  source ~/.config/nvim-Lazyman/scripts/asdfrc' >>"$BASHINIT"
      #     echo 'fi' >>"$BASHINIT"
    fi
    [ -f "${HOME}/.zshrc" ] && {
      grep "eval \"\$(${BREW_EXE} shellenv)\"" "${HOME}/.zshrc" >/dev/null || {
        echo 'if [ -x XXX ]; then' | sed -e "s%XXX%${BREW_EXE}%" >>"${HOME}/.zshrc"
        echo '  eval "$(XXX shellenv)"' | sed -e "s%XXX%${BREW_EXE}%" >>"${HOME}/.zshrc"
        echo 'fi' >>"${HOME}/.zshrc"
      }
      grep "eval \"\$(zoxide init" "${HOME}/.zshrc" >/dev/null || {
        echo 'if command -v zoxide > /dev/null; then' >>"${HOME}/.zshrc"
        echo '  eval "$(zoxide init zsh)"' >>"${HOME}/.zshrc"
        echo 'fi' >>"${HOME}/.zshrc"
      }
      #     grep "Lazyman/scripts/asdf" "${HOME}/.zshrc" >/dev/null || {
      #       echo "# Source the ASDF tool version manager init script" >>"${HOME}/.zshrc"
      #       echo '# This needs to come after PATH has been setup' >>"${HOME}/.zshrc"
      #       echo 'if [ -f ~/.config/nvim-Lazyman/scripts/asdfrc ]' >>"${HOME}/.zshrc"
      #       echo 'then' >>"${HOME}/.zshrc"
      #       echo '  source ~/.config/nvim-Lazyman/scripts/asdfrc' >>"${HOME}/.zshrc"
      #       echo 'fi' >>"${HOME}/.zshrc"
      #     }
    }
    eval "$("$BREW_EXE" shellenv)"
    have_brew=$(type -p brew)
    [ "$have_brew" ] && BREW_EXE="brew"
    [ "$debug" ] && {
      FINISH_SECONDS=$(date +%s)
      ELAPSECS=$((FINISH_SECONDS - START_SECONDS))
      ELAPSED=$(eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')")
      printf "\nHomebrew install elapsed time = ${ELAPSED}\n"
    }
    [ "$HOMEBREW_HOME" ] || {
      brewpath=$(command -v brew)
      if [ $? -eq 0 ]; then
        HOMEBREW_HOME=$(dirname "$brewpath" | sed -e "s%/bin$%%")
      else
        HOMEBREW_HOME="Unknown"
      fi
    }
    log "Homebrew installed in ${HOMEBREW_HOME}"
    log "See ${DOC_HOMEBREW}"
  fi
}

brew_install() {
  brewpkg="$1"
  if command -v "$brewpkg" >/dev/null 2>&1; then
    log "Using previously installed ${brewpkg} ..."
  else
    log "Installing ${brewpkg} ..."
    [ "$debug" ] && START_SECONDS=$(date +%s)
    "$BREW_EXE" install --quiet "$brewpkg" >/dev/null 2>&1
    [ $? -eq 0 ] || "$BREW_EXE" link --overwrite --quiet "$brewpkg" >/dev/null 2>&1
    if [ "$debug" ]; then
      FINISH_SECONDS=$(date +%s)
      ELAPSECS=$((FINISH_SECONDS - START_SECONDS))
      ELAPSED=$(eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')")
      printf " elapsed time = %s${ELAPSED}"
    fi
  fi
  [ "$quiet" ] || printf " done"
}

install_neovim_dependencies() {
  [ "$quiet" ] || printf "\nInstalling dependencies"
  [ "$install_bash" ] && {
    log "Installing a modern version of bash ..."
    [ "$debug" ] && START_SECONDS=$(date +%s)
    "$BREW_EXE" install --quiet bash >/dev/null 2>&1
    [ $? -eq 0 ] || "$BREW_EXE" link --overwrite --quiet bash >/dev/null 2>&1
    if [ "$debug" ]; then
      FINISH_SECONDS=$(date +%s)
      ELAPSECS=$((FINISH_SECONDS - START_SECONDS))
      ELAPSED=$(eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')")
      printf " elapsed time = %s${ELAPSED}"
    fi
  }
  PKGS="git curl tar unzip lazygit fd fzf xclip zoxide"
  for pkg in $PKGS; do
    if command -v "$pkg" >/dev/null 2>&1; then
      log "Using previously installed ${pkg}"
    else
      brew_install "$pkg"
    fi
  done
  log "Installing gh ..."
  [ "$debug" ] && START_SECONDS=$(date +%s)
  "$BREW_EXE" install --quiet gh >/dev/null 2>&1
  [ $? -eq 0 ] || "$BREW_EXE" link --overwrite --quiet gh >/dev/null 2>&1
  if [ "$debug" ]; then
    FINISH_SECONDS=$(date +%s)
    ELAPSECS=$((FINISH_SECONDS - START_SECONDS))
    ELAPSED=$(eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')")
    printf " elapsed time = %s${ELAPSED}"
  fi
  if command -v rg >/dev/null 2>&1; then
    log "Using previously installed ripgrep"
  else
    brew_install ripgrep
  fi
  # if command -v asdf >/dev/null 2>&1; then
  #   log "Using previously installed asdf"
  # else
  #   brew_install asdf
  # fi
  # if command -v asdf >/dev/null 2>&1; then
  #   [ -f ${HOME}/.config/nvim-Lazyman/scripts/asdf.sh ] && {
  #     source ${HOME}/.config/nvim-Lazyman/scripts/asdf.sh
  #   }
  #   asdf current python >/dev/null 2>&1
  #   [ $? -eq 0 ] || {
  #     log "Installing python with asdf ..."
  #     asdf plugin add python >/dev/null 2>&1
  #     asdf install python latest >/dev/null 2>&1
  #     asdf global python latest >/dev/null 2>&1
  #     if [ -f "${HOME}/.asdfrc" ]; then
  #       echo "legacy_version_file = yes" >>"${HOME}/.asdfrc"
  #     else
  #       echo "legacy_version_file = yes" >"${HOME}/.asdfrc"
  #     fi
  #     [ "$quiet" ] || printf " done"
  #   }
  # fi
  [ "$quiet" ] || printf "\n"
}

install_neovim_head() {
  "$BREW_EXE" link -q libuv >/dev/null 2>&1
  log "Installing Neovim ..."
  if [ "$debug" ]; then
    START_SECONDS=$(date +%s)
    "$BREW_EXE" install neovim
    "$BREW_EXE" install neovim-remote
  else
    "$BREW_EXE" install -q neovim >/dev/null 2>&1
    "$BREW_EXE" install -q neovim-remote >/dev/null 2>&1
  fi
  if [ "$debug" ]; then
    FINISH_SECONDS=$(date +%s)
    ELAPSECS=$((FINISH_SECONDS - START_SECONDS))
    ELAPSED=$(eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')")
    printf "\nInstall Neovim elapsed time = %s${ELAPSED}\n"
  fi
  [ "$quiet" ] || printf " done"
}

check_python() {
  brew_path=$(command -v brew)
  brew_dir=$(dirname "$brew_path")
  if [ -x "$brew_dir"/python3 ]; then
    PYTHON="${brew_dir}/python3"
  else
    PYTHON=$(command -v python3)
  fi
  # if command -v asdf >/dev/null 2>&1; then
  #   asdf current python >/dev/null 2>&1
  #   [ $? -eq 0 ] && PYTHON=$(asdf which python3)
  # fi
}

check_ruby() {
  brew_path=$(command -v brew)
  brew_dir=$(dirname "$brew_path")
  if [ -x "$brew_dir"/ruby ]; then
    RUBY="${brew_dir}/ruby"
  else
    RUBY=$(command -v ruby)
  fi
  if [ -x "$brew_dir"/gem ]; then
    GEM="${brew_dir}/gem"
  else
    GEM=$(command -v gem)
  fi
}

# Brew doesn't create a python symlink so we do so here
link_python() {
  python3_path=$(command -v python3)
  [ "$python3_path" ] && {
    python_dir=$(dirname "$python3_path")
    if [ -w "$python_dir" ]; then
      rm -f "$python_dir"/python
      ln -s "$python_dir"/python3 "$python_dir"/python
    fi
  }
}

install_tools() {
  [ "$quiet" ] || printf "\nInstalling language servers and tools"

  brew_install ccls
  "$BREW_EXE" link --overwrite --quiet ccls >/dev/null 2>&1

  brew_install php

  [ "$quiet" ] || printf "\nDone"

  [ "$quiet" ] || printf "\nInstalling Python dependencies"
  check_python
  [ "$PYTHON" ] || {
    # Could not find Python, install with Homebrew
    log 'Installing Python with Homebrew ...'
    "$BREW_EXE" install --quiet python >/dev/null 2>&1
    [ $? -eq 0 ] || "$BREW_EXE" link --overwrite --quiet python >/dev/null 2>&1
    link_python
    check_python
    [ "$quiet" ] || printf " done"
  }
  [ "$PYTHON" ] && {
    log 'Upgrading pip, setuptools, wheel, doq, and pynvim ...'
    "$PYTHON" -m pip install --upgrade pip >/dev/null 2>&1
    "$PYTHON" -m pip install --upgrade setuptools >/dev/null 2>&1
    "$PYTHON" -m pip install wheel >/dev/null 2>&1
    "$PYTHON" -m pip install pynvim doq >/dev/null 2>&1
    [ "$quiet" ] || printf " done"
  }
  [ "$quiet" ] || printf "\nDone"

  [ "$quiet" ] || printf "\nInstalling Ruby dependencies"
  check_ruby
  [ "$RUBY" ] || {
    # Could not find Ruby, install with Homebrew
    log 'Installing Ruby with Homebrew ...'
    "$BREW_EXE" install --quiet ruby >/dev/null 2>&1
    [ $? -eq 0 ] || "$BREW_EXE" link --overwrite --quiet ruby >/dev/null 2>&1
    check_ruby
    [ "$quiet" ] || printf " done"
  }

  [ "$GEM" ] && {
    log "Installing Ruby neovim gem ..."
    ${GEM} install neovim --user-install >/dev/null 2>&1
    [ "$quiet" ] || printf " done"
  }

  [ "$quiet" ] || printf "\nInstalling npm and treesitter dependencies"
  have_npm=$(type -p npm)
  [ "$have_npm" ] && {
    log "Installing Neovim npm package ..."
    npm i -g neovim >/dev/null 2>&1
    [ "$quiet" ] || printf " done"

    log "Installing cspell npm package ..."
    npm i -g cspell >/dev/null 2>&1
    [ "$quiet" ] || printf " done"

    log "Installing the icon font for Visual Studio Code ..."
    npm i -g @vscode/codicons >/dev/null 2>&1
    [ "$quiet" ] || printf " done"
  }

  if command -v "cargo" >/dev/null 2>&1; then
    log "Using previously installed cargo ..."
  else
    log "Installing cargo ..."
    [ "$debug" ] && START_SECONDS=$(date +%s)
    "$BREW_EXE" install --quiet "rust" >/dev/null 2>&1
    [ $? -eq 0 ] || "$BREW_EXE" link --overwrite --quiet "rust" >/dev/null 2>&1
    if [ "$debug" ]; then
      FINISH_SECONDS=$(date +%s)
      ELAPSECS=$((FINISH_SECONDS - START_SECONDS))
      ELAPSED=$(eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')")
      printf " elapsed time = %s${ELAPSED}"
    fi
  fi

  for pkg in bat lsd figlet luarocks lolcat terraform; do
    brew_install "${pkg}"
  done

  if command -v "rich" >/dev/null 2>&1; then
    log "Using previously installed rich-cli ..."
  else
    log "Installing rich-cli ..."
    [ "$debug" ] && START_SECONDS=$(date +%s)
    "$BREW_EXE" install --quiet "rich-cli" >/dev/null 2>&1
    [ $? -eq 0 ] || "$BREW_EXE" link --overwrite --quiet "rich-cli" >/dev/null 2>&1
    if [ "$debug" ]; then
      FINISH_SECONDS=$(date +%s)
      ELAPSECS=$((FINISH_SECONDS - START_SECONDS))
      ELAPSED=$(eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')")
      printf " elapsed time = %s${ELAPSED}"
    fi
  fi
  [ "$quiet" ] || printf " done"
  brew_install tree-sitter
  if command -v tree-sitter >/dev/null 2>&1; then
    tree-sitter init-config >/dev/null 2>&1
  fi

  GHUC="https://raw.githubusercontent.com"
  JETB_URL="${GHUC}/JetBrains/JetBrainsMono/master/install_manual.sh"
  [ "$quiet" ] || printf "\n\tInstalling JetBrains Mono font ... "
  curl -fsSL "$JETB_URL" >/tmp/jetb-$$.sh
  [ $? -eq 0 ] || {
    rm -f /tmp/jetb-$$.sh
    curl -kfsSL "$JETB_URL" >/tmp/jetb-$$.sh
  }
  [ -f /tmp/jetb-$$.sh ] && {
    chmod 755 /tmp/jetb-$$.sh
    /bin/bash -c "/tmp/jetb-$$.sh" >/dev/null 2>&1
    rm -f /tmp/jetb-$$.sh
  }
  [ "$quiet" ] || printf "done\nDone\n"
}

main() {
  check_prerequisites
  if command -v nvim >/dev/null 2>&1; then
    nvim_version=$(nvim --version | head -1 | grep -o '[0-9]\.[0-9]')
    if (($(echo "$nvim_version < 0.9 " | bc -l))); then
      printf "\nCurrently installed Neovim is less than version 0.9"
      [ "$nvim_head" ] && {
        install_homebrew
        install_neovim_dependencies
        install_tools
        printf "\nInstalling latest Neovim version with Homebrew"
        install_neovim_head
      }
    fi
  else
    install_homebrew
    install_neovim_dependencies
    install_tools
    if [ "$nvim_head" ]; then
      install_neovim_head
    else
      brew_install neovim
      brew_install nvr
    fi
  fi
}

nvim_head=1
quiet=
debug=

while getopts "dhq" flag; do
  case $flag in
    d)
      debug=1
      ;;
    h)
      nvim_head=
      ;;
    q)
      quiet=1
      ;;
    *) ;;
  esac
done

currlimit=$(ulimit -n)
hardlimit=$(ulimit -Hn)
[ "$hardlimit" == "unlimited" ] && hardlimit=9999
if [ "$hardlimit" -gt 4096 ]; then
  ulimit -n 4096
else
  ulimit -n "$hardlimit"
fi

install_bash=
[ "$debug" ] && MAIN_START_SECONDS=$(date +%s)

main

[ "$debug" ] && {
  MAIN_FINISH_SECONDS=$(date +%s)
  MAIN_ELAPSECS=$((MAIN_FINISH_SECONDS - MAIN_START_SECONDS))
  MAIN_ELAPSED=$(eval "echo $(date -ud "@$MAIN_ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')")
  printf "\nTotal elapsed time = %s${MAIN_ELAPSED}\n"
}

ulimit -n "$currlimit"
```

</details>
