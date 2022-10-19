local wezterm = require 'wezterm';
return {
  default_prog = {"/opt/homebrew/bin/fish", "-l"},
  adjust_window_size_when_changing_font_size = false,
  audible_bell = "Disabled",
  enable_tab_bar = false,
  window_background_opacity = 0.85,
  text_background_opacity = 0.95,
  font = wezterm.font_with_fallback({
    "JetBrains Mono"
  }),
  font_size = 12,
}
