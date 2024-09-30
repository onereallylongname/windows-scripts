# windows-scripts
A compilation of tool, scripts and how toos to create a developer environment on windows

## Dev env

This dev stack is based on the following:

- [Chocolatey](https://community.chocolatey.org/) : Package manager
- [Cmder](https://cmder.app/) : Console emulator
- [Windows Terminal](https://learn.microsoft.com/en-us/windows/terminal/install) : Terminal emulator
- [Neovim](https://neovim.io/) : Text editor (actually [Lazyvim](https://www.lazyvim.org/))
- [fzf](https://community.chocolatey.org/packages/fzf) : Command-line fuzzy finder
- [Tree](https://community.chocolatey.org/packages/tree) :  Directory visualizer
- [Bat](https://community.chocolatey.org/packages/bat) : File visualizer

After installing the previous list add the scripts directory to your path.

 ## Utils

To use these scripts just past them on a folder, then add that path to the system path variables.

### gt

Use fzf to go to any destination.
Uses tree to show a preview. Use shift+UP/DOWN arrow to scroll.
Uses the %HOME% system variable as the default/root path.

### np

Use fzf to open a new pane on any destination.
Uses tree to show a preview. Use shift+UP/DOWN arrow to scroll.
Uses the %HOME% system variable as the default/root path.

### sp

Use fzf to open a split pane on any destination.
Uses tree to show a preview. Use shift+UP/DOWN arrow to scroll.
Uses the %HOME% system variable as the default/root path.

### exopen

Use fzf to open windows explorer on any destination.
Uses tree to show a preview. Use shift+UP/DOWN arrow to scroll.
Uses the %HOME% system variable as the default/root path.

### fnv

Use fzf to open any file in vim.
Uses bat to show a file preview. Use shift+UP/DOWN arrow to scroll.
Uses the %HOME% system variable as the default/root path.
