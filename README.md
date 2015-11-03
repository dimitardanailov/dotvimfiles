## My .vim settings with Vundle

### Keep your dotfiles in git

```bash
git clone https://github.com/dimitardanailov/dotvimfiles ~/.vim/
```

If you need Move the `.vimrc` and `.gvimrc` files into the `.vim` directory:

```bash
mv .vimrc ~/.vim/vimrc
```

```bash
mv .gvimrc ~/.vim/gvimrc
```

Create symbolic links so that `~/.vimrc` points to the `~/.vim/vimrc` file:

```bash
ln -s ~/.vim/vimrc ~/.vimrc
```

```bash
ln -s ~/.vim/gvimrc ~/.gvimrc
```

### Installing your Vim environment on another machine

Once your vim configuration is under version control, it’s quite straightforward to import your settings to any machine that has git installed. If you followed the instructions above to put your vimrc and plugins in a dotvim directory, then you can follow these steps to synchronise them to another machine:

<code>
cd ~
</code>

<code>
git clone http://github.com/username/dotvim.git ~/.vim
</code>

<code>
ln -s ~/.vim/vimrc ~/.vimrc
</code>

<code>
ln -s ~/.vim/gvimrc ~/.gvimrc
</code>

<code>
cd ~/.vim
</code>

### Vundle

Documentation: [Vundle.vim](https://github.com/VundleVim/Vundle.vim)

1. Introduction:

   Installation requires [Git] and triggers [`git clone`] for each configured repository to `~/.vim/bundle/` by default.
   Curl is required for search.

   If you are using Windows, go directly to [Windows setup]. If you run into any issues, please consult the [FAQ].
   See [Tips] for some advanced configurations.

   Using non-POSIX shells, such as the popular Fish shell, requires additional setup. Please check the [FAQ].

2. Set up [Vundle]:

   `$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

3. Install Plugins:

   Launch `vim` and run `:PluginInstall`

   To install from command line: `vim +PluginInstall +qall`
