# Dotfiles

## Getting Started

Follow the below setup. This will enable us to easily manage our dotfiles using git. For example once setup we can run git commands as such `dotfiles status`, `dotfiles add <file>`, `dotfiles commit`.

```
git clone --bare https://github.com/rdforte/.dotfiles $HOME/.dotfiles
dotfiles config --local status.showUntrackedFiles no
dotfiles checkout
```

If you already have some of the dotfiles present, you will see this error.

```
error: The following untracked working tree files would be overwritten by checkout:
 .bashrc
Please move or remove them before you switch branches.
Aborting
```

Remove or backup any collisions and repeat the checkout.

[original dotifles medium article](https://medium.com/@simontoth/best-way-to-manage-your-dotfiles-2c45bb280049)

## Setup Dev Machine

To setup Mac with everything run the below script:

```
./setup-dev-machine.sh
```
