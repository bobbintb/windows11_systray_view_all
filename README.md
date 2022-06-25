# windows11_systray_view_all

Autoit script to fix the annoying new "feature" in Windows 11 where you cannot see all items in the system tray. I included the script and the EXE for those that are hesitant downloading executables. I have mine set in a scheduled task to run at log in. It works most of the time but sometimes it has issues and I just run it manually. 

This script first changes the registry key `HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\EnableAutoTray` from `0` to `1`. Otherwise the checkbox in the next step might not be clickable. It then opens `explorer shell:::{05d7b0f4-2121-4eff-bf6b-ed3f69b894d9}` and checks the box labeled ASlways show all icons and notifications on the taskbar" and clicks OK.

More info here:
https://www.technewstoday.com/windows-11-show-all-taskbar-icons/

There is probably a way to do this with Powershell but this was really quick and I don't have the time to look into Powershell. If you have a Powershell script that achieves the same thing, I'd be interested to see it. I'm curious if it will work better.
