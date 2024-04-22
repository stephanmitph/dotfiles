# Dotfiles 

This directory contains the dotfiles for my system. Managed by stew.

## Requirements

Ensure you have the following installed on your system

### Git
### Stow

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ git clone git@github.com/dreamsofautonomy/dotfiles.git
$ cd dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```

To add new files/folders to be managed, add the corresponding file/folders in the Repo's folder. 
