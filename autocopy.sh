cp -fv ~/.wezterm.lua .
cp -fv ~/.gitconfig .

cp -fvr ~/.config/fish .config/
cp -fvr ~/.config/htop .config/
cp -fvr ~/.config/neofetch .config/
cp -fvr ~/.simplebarrc .
cp -fvr ~/.config/skhd .config/
cp -fvr ~/.config/yabai .config/
cp -fvr ~/Library/Application\ Support/Übersicht "./Library/Application Support/"
cp -fv ~/.ssh/config .ssh/

defaults export com.lwouis.alt-tab-macos .plist/com.lwouis.alt-tab.macos.plist
rm ./Brewfile
brew bundle dump --file=./Brewfile
