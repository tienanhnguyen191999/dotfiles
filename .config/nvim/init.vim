set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

"Source plugin
source $HOME/.config/nvim/keys/which-key.vim
source $HOME/.config/nvim/plug-config/starify.vim
source $HOME/.config/nvim/plug-config/sneak.vim
source $HOME/.config/nvim/plug-config/signify.vim
source $HOME/.config/nvim/plug-config/vimairline.vim

