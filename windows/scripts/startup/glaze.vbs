Set WshShell = CreateObject("WScript.Shell")

WshShell.Run "powershell.exe -ExecutionPolicy Bypass -File glaze.ps1"
