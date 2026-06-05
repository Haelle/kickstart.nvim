# Personnal Cheatsheet

## Général

| Commande    | Description                                     |
| ----------- | ----------------------------------------------- |
| \<space\>sh | [S]earch [H]elp                                 |
| \<space\>sn | [S]earch (telescope) [N]eovim files             |
| \<C-y\>     | [Y]es, accept selection in completion mode      |
| \<space\>sk | [S]earch [K]eymaps/shortcuts                    |
| y           | [Y]ank Copie la selection dans le presse papier |

## Telescope

| Commande    | Description                                         |
| ----------- | --------------------------------------------------- |
| \<space\>sg | [S]earch [G]rep in file                             |
| \<space\>sf | [S]earch [F]iles telescope                          |
| \<space\>ss | [S]earch [S]elect telescope - search symbols        |
| Ctrl x      | Dans telescope ouvrir fichier en split horizontal   |
| Ctrl v      | Dans telescope ouvrir fichier en split vertical     |
| Ctrl t      | Dans telescope ouvrir fichier dans un nouvel onglet |

## Claude

| Commande       | Description                                                        |
| -------------- | ------------------------------------------------------------------ |
| \<space\>ac    | [A]I [C]laude - open Claude Code split                             |
| \<space\>as    | [A]I [S]election - when in visual mode selection send it to Claude |
| \<space\>af    | [A]I [F]ocus Claude                                                |
| \<space\>aa    | [A]I [A]ccept Claude diff                                          |
| \<space\>ad    | [A]I [D]eny Claude diff                                            |
| \<Esc\>\<Esc\> | Quit Claude focus                                                  |

## Diagnostics

| Commande    | Description                                        |
| ----------- | -------------------------------------------------- |
| gra         | [G]o to code [A]ctions - open code actions options |
| \<space\>q  | Open diagnostic [Q]uick fix list                   |
| \<space\>sd | [S]earch for [D]iagnostics in folder               |
| \<C-w\>d    | Display full [D]iagnotic under caret               |
| [d          | Go to prev [Diagnostic]                            |
| ]d          | Go to next [Diagnostic]                            |

## LSP

Via `:LspInfo` il est possible de savoir quel LSP est détecté/activé pour le fichier actuel. Il y a aussi des warnings sur les problèmes de configuration.
Les Warning (5) sont corrigés par l'ajout de filetype dans `init.lua` mais les LSP ne le savent pas, d'où les warnings.

### Shortcuts

| Commande | Description                |
| -------- | -------------------------- |
| grd      | [G]o to [R] [D]efinition   |
| grr      | [G]o to [R] [R]ereferences |

### Bash LSP

/!\ Bash supporte très mal les LSP, le Go to Definition ne marche que quand les `source xxx` n'ont pas de variables ça limites les possibilités...

## Spectre (Search & Replace)

| Commande    | Description                                   |
| ----------- | --------------------------------------------- |
| \<space\>sR | [S]earch and [R]eplace (Spectre) (open/close) |
| dd          | Toggle on/off un remplacement (une ligne)     |
| \<space\>R  | Replace all                                   |
| \<space\>rc | Replace current (une seule occurrence)        |

## Debug (DAP)

| Commande    | Description                                     |
| ----------- | ----------------------------------------------- |
| F5          | Start/Continue debugging                        |
| F1          | Step Into                                       |
| F2          | Step Over                                       |
| F3          | Step Out                                        |
| F7          | Toggle DAP UI (voir dernière session)           |
| \<space\> b | Toggle [B]reakpoint                             |
| \<space\> B | Set conditional [B]reakpoint (prompt condition) |

### .NET (netcoredbg)

Au lancement (F5) dans un fichier `.cs`, deux configs disponibles :

- **Launch .NET App** : demande le chemin vers le `.dll` (par défaut `bin/Debug/`)
- **Attach to process** : s'attacher à un process .NET en cours

Prérequis : `netcoredbg` installé via `:Mason` (s'installe automatiquement au premier lancement).

## Roslyn LSP (C#)

OmniSharp remplacé par `roslyn.nvim` (le vrai LSP de Roslyn, celui de Rider/VS).

Features activées :

- Inlay hints (`<space> th` pour toggle)
- Complétion avec imports automatiques
- Code lens (références, tests)
- Code actions (refactoring) via `gra`

Prérequis : SDK .NET installé. Au premier ouverture d'un `.cs`, roslyn.nvim télécharge le serveur automatiquement.

## Snippets C# (XML Doc)

| Snippet | Description                                      |
| ------- | ------------------------------------------------ |
| ///     | Block `<summary>` simple                         |
| ///m    | Doc méthode complète (summary + param + returns) |
| ///p    | Tag `<param>`                                    |
| ///r    | Tag `<returns>`                                  |
| ///c    | Doc classe (summary + remarks)                   |
| ///e    | Tag `<exception>`                                |

Taper le snippet puis `<C-y>` pour valider, `<Tab>` / `<S-Tab>` pour naviguer entre les champs.

## Other Shortcuts

| Commande            | Description                         |
| ------------------- | ----------------------------------- |
| \<C-o\>             | previous file                       |
| Tab                 | next file                           |
| u                   | undo                                |
| \<C-r\>             | redo                                |
| K (maj)             | Show information on this (code def) |
| \<C-w\>\<Arrows\>   | Move cursor into another split      |
| \<C-r\>\<S-Arrows\> | Move split                          |
| \<space\>st         | [S]earch for [T]odos                |

## Installtions complémentaires

utilise `:Mason` pour installer des dépendances que pour NeoVim (utiliser `i` pour installer)

## LSP/Linter/Formetter installés

Il est possible que certaines configurations soient incomplètes car il faut parfois installer/configurer le LSP, Linter et Formatter...
Soit via Mason si possible sinon via plugins + dépendances externes :

- Yaml
- Markdown
- Dockerfile/Containerfile
- docker-compose
- bash
- Kube files (.k8s.yml)
- Quadlet (.kube systemd)

Todo/ToTest :

- Python (Django/FastAPI)
- C# (Unity)
- Ruby (Rails)

## Dépendances

Cette conf est installée par [Dotfiles](https://github.com/Haelle/dotfiles), et pour fonctionner cette conf NeoVim a plusieurs dépendances :

- `tree-sitter-cli` via Cargo
- `asdf` pour installer NeoVim lui-même (kickstart n'est compatible qu'avec les dernières verions)
- `quadlet-lsp` pour le linter/LSP pour les Quadlet Podman
