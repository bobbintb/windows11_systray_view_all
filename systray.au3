#include <GUIConstantsEx.au3>
#include <MsgBoxConstants.au3>

ProcessWait("explorer.exe")
Run("REG ADD HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer /f /v EnableAutoTray /t REG_SZ /d 1")
Run("explorer shell:::{05d7b0f4-2121-4eff-bf6b-ed3f69b894d9}")
Sleep (1000)
WinWaitActive("Notification Area Icons")
If Not ControlCommand("Notification Area Icons", "", "Button3", "IsChecked") Then
  ControlCommand("Notification Area Icons", "", "Button3", "Check")
EndIf
WinClose("Notification Area Icons")