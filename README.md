## After installation

Requirements

```
pacman -S neovim ctags fzf ripgrep
```


```
:PlugInstall
:CocInstall coc-python
```

## Per project requirements

To make coc find both project modules and env modules place a `.env` file to the root of projects:

```
PYTHONPATH="src/project:src/another"
```

## Features

### Python 

[X] Python general settings
[X] Python completion
[X] Python virtualenv
[X] Python isort and black
[X] Python auto import
[X] Python flake8
[X] Python goto definition
[-] Python find usage
[-] Python snippets

### Files

[X] Fuzzy emacs-like find file
[X] Fuzzy search
[X] Open file relative to current
[-] File browser
[X] FS actions

### Visual

[ ] Theme
[ ] Borders
[ ] Side icons
[ ] Syntax highlight
[ ] Modeline status / git / blame // acpi / time
[X] Git diffs

### Editing

[X] AceJump
[X] Surround
[X] JK esc
[ ] CoC integrations (red, gitlab, ...)

### Windows and buffers

[X] Buffer list
[X] Switching windows
