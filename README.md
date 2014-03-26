<h2>My .vim settings</h2>

I will use tutorial: 

http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/

to sync my .vim dot files

<h3>Commands</h3>

git clone https://github.com/dimitardanailov/vimrc.git ~/.vim/

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

