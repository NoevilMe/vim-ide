# vim-ide

## Installation
 - download the latest vim https://github.com/vim/vim/releases
 - extract the archive
 - copy build_vim.sh to the vim source directory and run it. (it will uninstall the vim and build from source)
 - ```copy .vim ~ -r```
 - ```copy .vimrc ~```
 - (optional) if you don't need golang support, comment ~/.vim/vimrc line  
  ```Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }```
 - start ```vim +PlugInstall``` to install all plugins
 - vim-clap has some dependencies, please install them if you want to use it.
