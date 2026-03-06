# Personnal Cheatsheet

## Général

| Commande     | Description                                |
| ------------ | ------------------------------------------ |
| \<space\> sn | [S]earch (telescope) [N]eovim files        |
| \<C-y\>      | [Y]es, accept selection in completion mode |
| \<space\> sk | [S]earch [K]eymaps/shortcuts               |
| \<space\> sh | [S]earch [H]elp                            |

## Telescope

| Commande     | Description                                         |
| ------------ | --------------------------------------------------- |
| \<space\> ss | [S]earch [S]elect telescope                         |
| Ctrl x       | Dans telescope ouvrir fichier en split horizontal   |
| Ctrl v       | Dans telescope ouvrir fichier en split vertical     |
| Ctrl t       | Dans telescope ouvrir fichier dans un nouvel onglet |

## Shortcuts

| Commande | Description                                          |
| -------- | ---------------------------------------------------- |
| \<C-o\>  | previous file                                        |
| Tab      | next file                                            |
| gaip     | [A]lign [I]nside current [P]aragraph (align tableau) |

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
