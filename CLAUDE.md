# CLAUDE.md

Personal fork of [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim).
This repository *is* a Neovim configuration, not a library: everything here is
Lua executed by Neovim (LuaJIT), so `vim` is a global and the editor runtime is
part of the API surface.

## Layout

* `init.lua` — the configuration itself: options, keymaps, and the lazy.nvim
  plugin specs. Upstream keeps it a single documented file; the long explanatory
  comments are the point, keep them when editing around them.
* `lua/kickstart/plugins/` — optional upstream modules, required from `init.lua`.
* `lua/custom/` — personal additions (keymaps, extra plugin specs). Prefer adding
  here over growing `init.lua`.
* `luasnippets/` — LuaSnip snippets, one file per filetype.
* `doc/` — vim help files (`doc/tags` is generated, do not edit by hand).

## Conventions

* Format with stylua before committing: `stylua .` (`--check .` to verify).
  `.stylua.toml` sets 2-space indent, 160 columns, single quotes preferred and
  no parentheses on single-argument calls. The upstream formatting workflow is
  gated to `nvim-lua/kickstart.nvim`, so it does not run on this fork — run it
  locally.
* Plugin specs follow lazy.nvim conventions; `lazy-lock.json` is intentionally
  gitignored here.
* There is no test suite. Validate a change by loading it, for example
  `nvim --headless "+Lazy! sync" +qa`, and `:checkhealth` for the heavier ones.

## Tooling

* `.claude/settings.json` enables `lua-lsp@claude-plugins-official`. The plugin
  must already be installed on the machine — a repository can activate a plugin,
  it cannot fetch one. See the README for installing `lua-language-server`.
* `.luarc.json` declares the LuaJIT runtime, the `vim` global and
  `$VIMRUNTIME/lua` in the workspace library, so the language server does not
  report editor globals as undefined.

These follow the per-project conventions in
[claude-par-projet.md](https://github.com/Haelle/dotfiles/blob/master/docs/claude-par-projet.md#lua-et-neovim).
