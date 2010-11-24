Simple but good starting configuration for Vim
==============================================
I prefer to map ctrl+space to ESC to make it faster to exit insert mode and allow you to keep the hands on home row. If you don't like this, remove the line <code>imap <C-space> <Esc></code> from .vimrc

The font is set to Inconsolata. Unless you have installed this font, you won't have it and will need to remove the line <code>set guifont=Inconsolata:h14</code>. It is a very nice coding font however and I heartily recommend it.

If you don't like the relative line numbering, remove this line
<code>set rnu</code>.
It makes things like x-dd much more useful though, as you don't have to count the lines you want to delete.

If you want to have a menubar, remove the following lines from .vimrc
<code>
if has("gui_running")
	set guioptions=-m
	set guioptions=-T
endif
</code>

Included plugins
----------------
* matchit - extend matching via %
* surround - easy and versatile surrounding of expressions
* yankring - emulates Emacs' killring.
* command-t - similar to Textmates command-t and fuzzysearch.
* fugitive - very good Git wrapper.
* delimitmate - autopairing for delimiters like "(".
* NERDTree - file browser.
* snipmate - Texmate like snippets for Vim.
* supertab - great tab completion.
* tcomment - smart file type dependent comments.
* latex - LaTeX support.

Most of these are included as git submodules and they're all managed by pathogen, so updating, removal and addition of plugins is easy.

Installation
------------
To install, simply clone this repository to ~/.vim and then link the .vimrc to your home directory via <code>ln -s ~/.vim/.vimrc ~/.vimrc</code>. You might also have to do a <code>rake make</code> in bundle/command-t. For this you will need a working C compiler and a relatively recent version of Ruby.
