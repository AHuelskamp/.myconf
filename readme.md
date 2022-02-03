# How I manage my dot files

Following a thread I saw on [hacker news](https://news.ycombinator.com/item?id=11070797), I put all of my config files and scripts under git to make setting up a new system easier.

Since this setup is a litle bit different than a normal git setup, you need to un the alias `config` instead of `git`. Also, since the entire home directory is technically under version control, there's a few commands you should **not** run (e..g, `config status -u`) unless you want to traverse your entire home directory :)

# How to set up this repo up on an exisiting system

> Something usually goes wrong here. Good luck :)

1. Clone the git repo onto your computer.

   > You can rm the `separate-git` flag if you don't want to keep things under version control.

   `cd ~ && git clone --separate-git-dir=$HOME/.myconf git@github.com:TessHuelskamp/.myconf.git temp`

1. Copy the files you want over into your home directory ( `cp temp/.ssh/config ~/.ssh/config` )
1. Ensure that this line (below) is sourced in your login to tell git how to work with your home direcotry. This line should already be in your aliases file if you copied if over in an earlier step.
   - `alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'`
1. Source the `~/.aliases` file
1. Configure your `config` git directory **not** to show untracked files by default (in this case the untracked files would be the entirity of your home directory :) )
   `config config status.showUntrackedFiles no`
   > Note that you'll need to manually add new files to this setup (e.g., any new `~/bin/exes` or `~/.configs` ).

# General New System Todos

- Terminal configurations
  - Option as a meta key
- Keyboard: CapsLock -> Esc
- `defaults write com.apple.screencapture location AN_EXISTING_DIR`
- Add some desktop pointers to frequenltly used locations
  - `ln -s ~/ScreenShots ~/Desktop`
  - > Also the Sandbox
- brew
- Hot corner locks window
  - Put display to sleep
  - And then require password immediately after locking
