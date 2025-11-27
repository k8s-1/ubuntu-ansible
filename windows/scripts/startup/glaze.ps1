# automation to start commonly used apps

# invocation: powershell.exe -WindowStyle Hidden -File "%USERPROFILE%\Desktop\glaze.ps1"
# usage: store in task scheduler at startup, program powershell.exe, args -Windo... etc.

Start-Process glazewm
Start-Sleep -Seconds 3
Start-Process ms-teams
Start-Sleep -Seconds 5
Start-Process chrome -ArgumentList (
  "--new-tab https://google.com/",
)
Start-Sleep -Seconds 5
Start-Process wt
