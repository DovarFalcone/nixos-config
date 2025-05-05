# i use nix btw

sudo cp -r /etc/nixos/* ~/nixos-dotfiles/

cp -R ~/.config/alacritty nixos-dotfiles/alacritty

cp -R ~/.config/qtile nixos-dotfiles/qtile

cd ~/nixos-dotfiles
git status            # See what changed
git add .
git commit -m "Update config: <describe what changed>"
git push



