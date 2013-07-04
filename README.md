Installation:

    git clone git://github.com/nelstrom/dotvim.git ~/.vim

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update






cd ~/.ssh && ssh-keygen

next you need to copy this to your clipboard.

    on OSX run
        cat id_rsa.pub | pbcopy

    on Linux run
        cat id_rsa.pub | xclip

next add your key to your account

finally if you are using git, setup your git config

git config --global user.name "bob"

git config --global user.email bob@...

(don't forget to restart your command line to make sure the config is reloaded)

Thats it you should be good to clone and checkout.
