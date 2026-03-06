# Personnal Cheatsheet

## Général

| Commande     | Description                                |
| ------------ | ------------------------------------------ |
| \<space\> sh | [S]earch [H]elp                            |
| \<space\> sn | [S]earch (telescope) [N]eovim files        |
| \<C-y\>      | [Y]es, accept selection in completion mode |
| \<space\> sk | [S]earch [K]eymaps/shortcuts               |

## Telescope

| Commande     | Description                                         |
| ------------ | --------------------------------------------------- |
| \<space\> ss | [S]earch [S]elect telescope                         |
| Ctrl x       | Dans telescope ouvrir fichier en split horizontal   |
| Ctrl v       | Dans telescope ouvrir fichier en split vertical     |
| Ctrl t       | Dans telescope ouvrir fichier dans un nouvel onglet |

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

## Shortcuts

| Commande             | Description                         |
| -------------------- | ----------------------------------- |
| \<C-o\>              | previous file                       |
| Tab                  | next file                           |
| u                    | undo                                |
| \<C-r\>              | redo                                |
| K (maj)              | Show information on this (code def) |
| \<C-w\> \<Arrows\>   | Move cursor into another split      |
| \<C-r\> \<S-Arrows\> | Move split                          |

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
