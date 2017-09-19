# How my dot files are managed:
Following a thread I saw on the [internet](https://news.ycombinator.com/item?id=11070797)
I put all of my config files under version control to easily begin working on
new systems.

Since this setup is a litle bit different than a normal git setup, you need to
un the alias `config` instead of `git`. Also, since the entire home directory
is technically under version control, there's a few commands you should run
(`git status -u`, _e.g._) unless you want to traverse your entire home directory :)

Right now, I'm working on refactoring my setup to work under a few different
types of OSs (initially: MacOS and Ubuntu) so that I don't have to do anything
when starting off on a new system :)

# Setup
## On a clean system

  * From your home directory, clone the repo.
    * `cd ~ && git clone git@github.com:TessHuelskamp/.myconf.git`
  * source the `~/.bashrc` file to setup the `config` alias
    * source ~/.bashrc`
  * Make some changes
  * Add and commit them
    * `config add FILE; config commit -m "message"`


## On an "old" system
If you directly clone this repo over a home directory that has been partially
setup, you're likely going to overwrite a few important files (in particular,
ssh keys).

It's a lot easier to clone the directory to a temporary place and then copy over
the files you want/need.

  * Clone repo into a new directory
    * `cd ~ && git clone git@github.com:TessHuelskamp/.myconf.git
      temporary-storage`
  * Copy over the files you want.
    * `cp temporary-storage/.vimrc .`
    * `cp temporary-storage/.ssh/config .ssh/config`
  * If you want to still keep the directory under version control, copy over the
     `.git` folder and then follow the instructions above to source the
      `~/.bashrc` and begin working.
    * `cp -r temporary-storage/.git ~/.myconf`
  * Ensure that this line (below) is sourced upon login (it should be already).
    * `alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'`

