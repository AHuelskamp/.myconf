# How my dot files are managed:
Following a thread I saw on the [internet](https://news.ycombinator.com/item?id=11070797) I put all of my config files under version control to easily begin working on new systems.

Since this setup is a litle bit different than a normal git setup, you need to un the alias `config` instead of `git`. Also, since the entire home directory is technically under version control, there's a few commands you should run (`config status -u`, _e.g._) unless you want to traverse your entire home directory :)

Right now, I'm working on refactoring my setup to work under a few different types of OSs (initially: MacOS and Ubuntu) so that I don't have to do anything when starting off on a new system :)

# Setup
* > Something usually goes wrong here. Have a healthy skepticism to these instructions :)
* Clone repo into a new directory
  * `cd ~ && git clone git@github.com:TessHuelskamp/.myconf.git temporary-storage`
* Copy over the files you want.
  * `cp temporary-storage/.vimrc .`
  * `cp temporary-storage/.ssh/config .ssh/config`
* If you want to still keep the directory under version control, copy over the
   `.git` folder and then follow the instructions above to source the `~/.bashrc` and begin working.
  * `cp -r temporary-storage/.git ~/.myconf`
* Ensure that this line (below) is sourced upon login (it should be already).
  * `alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'`
* Source the `~/.bash_profile`
* `config config status.showUntrackedFiles no`
  * > Now you need to manually add files (new ~/bin/exes`).

# General New System Todos
* Terminal configurations
  * Option as a meta key
* Keyboard: CapsLock -> Esc
* `defaults write com.apple.screencapture location AN_EXISTING_DIR`
* `ln -s ~/ScreenShots ~/Desktop`
  * > Also web receipts, Home
* New ssh key
  * Add to github
* `cd ~; mkdir Sticky Notes Github Sandbox`
  * (Also clone notes and sticky repos)

## Mac
* brew
* Hot corner locks window
  * Put display to sleep
  * And then require password immediately after locking
* java
