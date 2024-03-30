import XMonad
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.ManageDocks
import System.Taffybar.Support.PagerHints

main = xmonad $ docks $ ewmh $ pagerHints $ def
  { terminal  = "alacritty"
  }
