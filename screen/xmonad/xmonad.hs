import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

myManageHook = composeAll
    [ className =? "Gimp"      --> doFloat]

main = do
    xmproc <- spawnPipe "xmobar"
    xmonad $ docks defaultConfig
        { manageHook = myManageHook <+> manageHook defaultConfig
	, terminal = "xterm"
        , layoutHook = avoidStruts  $  layoutHook defaultConfig
	, modMask = mod4Mask
        , logHook = dynamicLogWithPP xmobarPP
                        { ppOutput = hPutStrLn xmproc
			, ppCurrent = xmobarColor "black" "" . wrap "<" ">"
                        , ppTitle = xmobarColor "green" "" . shorten 50
                        }
        } `additionalKeys`
        [ ((controlMask, xK_Print), spawn "sleep 0.2; scrot -s")
        , ((0, xK_Print), spawn "scrot")
        ]
