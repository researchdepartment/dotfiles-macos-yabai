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
brew install youtube-dl
brew install ffmpeg
brew install git
brew install gh
brew install watch
brew install ncdu
brew install bmon
brew install tor torsocks
brew install arp-scan
brew install python@3.9
brew install --cask alt-tab
brew install nano
brew install nanorc
echo 'include "/opt/homebrew/Cellar/nano/*/share/nano/*.nanorc"' >> ~/.nanorc

# start tor
brew services start tor
```

## import settings:
```sh
# AltTab
defaults import com.lwouis.alt-tab-macos .plist/com.lwouis.alt-tab.macos.plist
```
