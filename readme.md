# Installation:

Clone configuration and activate it:

    git clone git://github.com/maxbarbul/dotvim.git ~/.vim && cd ~/.vim && init.sh

Note: read `init.sh` for more details on installation.

# Folder structure

 - etc - holds all config files
   - \_vimrc - is linked to be the main entrance point for terminal vim.
   - \_gvimrc - is linked to be the main entrance point for GUI vim.
   - env.vim - sets some global variables like `path`, `cdpath`, etc.
   - filetypes.vim - some additional file type detection rules.
   - functions.vim - useful functions definitions
   - interface.vim - settings related to interface, colors, theme, mouse, keyboard, etc.
   - mapping.vim - all my mappings, some mappings are done also by pluggins.
   - pluggins.vim - pluggins setup and configuration.
   - wiki.vim - settings for markdown filetype
 - bundle - installation folder for pluggins managed by Vundle.
 - colors - color schemas
 - dict - semi-manual created keyword dictionaries for used languages.
 - ftplugin - special settings based on `filetype`.
 - snippets - custom snippets
 - spell - custom spelling dictionaries
 - support - some garbage.

# TODO

- Integrate .textedit config and remove or reset some editing related settings, such as spaces/tabs.
- Move `etc/wiki.vim` to `ftplugin/wiki.vim` or markdown.vim.
