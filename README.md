# macOS + yabai + skhd + spacebar

& more

![desktop](image.png)

## to-do: 
* https://github.com/researcx/mospos required for spacebar left_shell_command
* replace neofetch image_source

## install: 

```sh
# ux
brew install koekeishiya/formulae/yabai
brew install koekeishiya/formulae/skhd
brew install cmacrae/formulae/spacebar
brew install --cask font-fontawesome
brew install neofetch
brew install fish
brew tap wez/wezterm
brew install --cask wez/wezterm/wezterm

# start ux
brew services start yabai
brew services start skhd
brew services start spacebar

# util
brew install youtube-dl ffmpeg
brew install git gh
brew install watch
brew install ncdu htop
brew install autossh mosh
brew install tor torsocks
brew install bmon arp-scan
brew install python@3.9
brew install --cask alt-tab
brew install nano nanorc
echo 'include "/opt/homebrew/Cellar/nano/*/share/nano/*.nanorc"' >> ~/.nanorc

# start tor
brew services start tor
```

***note:** [tell skhd to use a different shell](https://github.com/koekeishiya/skhd/issues/42#issuecomment-401886533)*

### set hostname:
```sh
sudo scutil --set LocalHostName codekitty
sudo scutil --set HostName codekitty
sudo scutil --set ComputerName codekitty
```

### disable desktop icons:
```sh
defaults write com.apple.finder CreateDesktop false; killall Finder
```

### disable resizing of dock:
```sh
defaults write com.apple.Dock size-immutable -bool true; killall Dock
```

### import settings:
```sh
# AltTab
defaults import com.lwouis.alt-tab-macos .plist/com.lwouis.alt-tab.macos.plist
```

### show active python binary:
```sh
type -a python
```
