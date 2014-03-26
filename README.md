<h2>My .vim settings</h2>

I follow tutorial "Synchronizing plugins with git submodules and pathogen" : 

http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/

to sync my .vim dot files and Github.

<h3>Keep your dotfiles in git</h3>

<code>
git clone https://github.com/dimitardanailov/vimrc.git ~/.vim/
</code>

If you need Move the .vimrc and .gvimrc files into the .vim directory:

<code>
mv .vimrc ~/.vim/vimrc
</code>

<code>
mv .gvimrc ~/.vim/gvimrc
</code>

Create symbolic links so that ~/.vimrc points to the ~/.vim/vimrc file:

<code>
ln -s ~/.vim/vimrc ~/.vimrc
</code>

<code>
ln -s ~/.vim/gvimrc ~/.gvimrc
</code>

<h3>Install plugins as submodules</h3>

With pathogen installed, it’s now possible to keep the files for each plugin together, which means that every plugin can be kept in its own git repository. The best way to do this is to use git submodules, which are designed especially for the purpose of keeping git repositories within a git repository.

To install the fugitive plugin as a git submodule, take the following steps:

<code>
cd ~/.vim
</code>

<code>
mkdir ~/.vim/bundle
</code>

<code>
git submodule add http://github.com/tpope/vim-fugitive.git bundle/fugitive
</code>

<code>
git add .
</code>

<code>
git commit -m "Install Fugitive.vim bundle as a submodule."
</code>

<h3>Installing your Vim environment on another machine</h3>

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

<code>
git submodule init
</code>

<code>
git submodule update
</code>

<h3>Upgrading a plugin bundle</h3>

At some point in the future, the fugitive plugin might be updated. To fetch the latest changes, go into the fugitive repository, and pull the latest version:

<code>
cd ~/.vim/bundle/fugitive
</code>

<code>
git pull origin master
</code>

<h3>Upgrading all bundled plugins</h3>

You can use the foreach command to execute any shell script in from the root of all submodule directories. To update to the latest version of each plugin bundle, run the following:

<code>
git submodule foreach git pull origin master
</code>

<h3>Delete submodule</h3>

Of course fugitive plugin can be deleted, run the following:

<code>
git rm --cached bundle/fugitive
</code>

<code>
rm -rf bundle/fugitive
</code>

<code>
git commit -m "Delete Fugitive.vim bundle."
</code>


