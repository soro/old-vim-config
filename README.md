# Simple but good starting configuration for Vim
Line numbering ist set to be relative, which you can change by removing the line
<code>set rnu</code>
The following plugins are included:
* yankring - emulates Emacs' killring
* command-t - similar to Textmates command-t and fuzzysearch
* fugitive - very good Git wrapper
* delimitmate - autopairing for delimiters like "("
* NERDTree - file browser
* snipmate - Texmate like snippets for Vim
* supertab - great tab completion
* tcomment - smart file type dependent comments
* latex - LaTeX support
Most of these are included as git submodules and they're all managed by pathogen, so updating, removal and addition of plugins is easy.
To install, simply clone this repository to ~/.vim and then link the .vimrc to your home directory via "ln -s ~/.vim/.vimrc ~/.vimrc". You might also have to do a "rake make" in bundle/command-t. For this you will need a working C compiler and a relatively recent version of Ruby.
