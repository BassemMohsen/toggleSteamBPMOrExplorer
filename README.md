# Toggle SteamBPM Or Wuindows Explorer
Windows bash scripts that can be used from Steam Big Picture Mode to boot to either Windows Explorer or Steam BPM
This is manily intended for handhelds to optimize resources such as cpu, ram usage, and power consumption.
Windows Explorer and Desktop environment uses a footprint that can be significant when targeting extreme low power consumption for handhelds.

# Warning
* Proceed at your own risk, this is intended for power users only.
* Read and review the scripts before executing them, don't trust anyone who hand you over scripts to execute.
* When Windows boots to Steam Big Picture Mode, it will won't be able to open the following:
  - Task bar
  - Start menu
  - Search functions
  - Gamebar
  - Notifiction Center
  - Control Center
  - Explorer

* For Handheld settings, I rely on [Handheld companion](https://github.com/Valkirie/HandheldCompanion/tree/main) since Windows Settings and Game bar won't work anymore.
* In case of Windows updates or maintenance, use Reboot To Windows Explorer to go back to windows and run normal chores.

# Prerequisites 
* Enable running powershell scripts:
  - Start Windows PowerShell with the "Run as Administrator" option. 
  - Enable running unsigned scripts by entering: set-executionpolicy remotesigned
* Add new String to regedit at the "Shell" with value "explorer.exe" at "Computer\HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Winlogon"

# Instructions:
1. Copy the scripts to the following path: C:\development
2. Start steam in regular mode and from the top bar, select Games -> Add non-steam Games to my library
3. Browse and find pwsh.exe, usually in the following path: C:\Program Files\PowerShell\7\pwsh.exe
4. Select Add Selected Programs
5. Right click on the new added "game" or pwsh, select properties
  5.1. Customize Target: "C:\Program Files\PowerShell\7\pwsh.exe" -file "C:\development\reboot_to_windows_explorer.ps1"
  5.2. Start In "C:\development"
  5.3 Shortcut: Reboot To Windows Explorer
6. Repeat steps 2. to 5. for reboot_bypass_windows_explorer.ps1
  6.1. Customize Target: "C:\Program Files\PowerShell\7\pwsh.exe" -file "C:\development\reboot_bypass_windows_explorer.ps1"
  6.2. Start In "C:\development"
  6.3 Shortcut: Reboot to SteamBP - Bypass Desktop
7. Now there's two Game-like launchers to select between booting to Windows Explorer or to Steam Big Picture Mode directly.


In case of failure, you need to connecto a keyboard and mouse and use Ctrl+Alt+Del -> Task Manager -> Run new task -> regedit -> edit manually the registery to boot to explorer again.
