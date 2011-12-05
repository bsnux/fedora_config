import XMonad
import XMonad.Config.Xfce
 
main = xmonad xfceConfig
              { modMask = mod4Mask
              , borderWidth = 4
              , focusedBorderColor = "#7FBC71"
               }
