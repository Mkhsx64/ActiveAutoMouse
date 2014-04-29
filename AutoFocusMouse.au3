#include <WindowsConstants.au3>
#include <EditConstants.au3>
#include <MsgBoxConstants.au3>
#include <Misc.au3>

Local $ActiveWindow, $ActiveCheck, $Coords

HotKeySet("{Esc}", "Quit")

While 1
   $ActiveWindow = WinGetState("[ACTIVE]")
   ConsoleWrite($ActiveWindow)
   $Coords = WinGetPos($ActiveWindow)
   _MouseTrap($Coords[0], $Coords[1], $Coords[0] + $Coords[2], $Coords[1] + $Coords[3])
WEnd

Func Quit()
   Exit
EndFunc

