Push-Location
Set-Location "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp"
Set-ItemProperty . UserAuthentication 0
Set-ItemProperty . SecurityLayer 0
Pop-Location
