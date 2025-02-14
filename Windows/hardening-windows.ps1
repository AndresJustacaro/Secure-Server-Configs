```powershell
# Deshabilitar SMBv1
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" -Name SMB1 -Value 0

# Bloquear acceso remoto al registro
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurePipeServers\winreg" -Name Enabled -Value 0

# Bloquear macros en Office
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Office\16.0\Excel\Security" -Name VBAWarnings -Value 4

# Bloquear ejecución de scripts en PowerShell
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell" -Name EnableScripts -Value 0

# Reforzar políticas de contraseñas
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa" -Name LimitBlankPasswordUse -Value 1

Write-Host "Hardening en Windows aplicado correctamente."
```
