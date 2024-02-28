# Sl0ppyR00tNullify.ps1
#
# AUTHOR : P.Hoogeveen
# AKA    : x0xr00t 
# BUILD  : 31102021
# TOOL   : Change LUA

function Nullify-RegistrySetting {
    param (
        [string]$RegistryPath,
        [string]$SettingName
    )

    Write-Host "Nullifying $SettingName..."
    $val = Get-ItemProperty -Path $RegistryPath -Name $SettingName
    if ($val.$SettingName -ne 0) {
        Set-ItemProperty -Path $RegistryPath -Name $SettingName -Value 0
    }
    
    Get-ItemProperty -Path $RegistryPath -Name $SettingName
    Write-Host "Successfull Nullified $SettingName"
}

function Display-Header {
    Write-Host "000000000000slo0ppyr00t000000000000"
    Write-Host "0 Sl0ppyR00tNullify Lua Settings  0"
    Write-Host "000000000000slo0ppyr00t000000000000"
    Write-Host ""
    Write-Host ""
}

Display-Header
Write-Host "{Sl0ppyR00t} Getting LUA Settings...."
Start-Sleep -Seconds 4
Write-Host ""
Write-Host "{Sl0ppyR00t} Initializing..."
Write-Host ""

$RegistryPath = "HKLM:\Software\Microsoft\Windows\CurrentVersion\policies\system"

# Nullify settings
Nullify-RegistrySetting -RegistryPath $RegistryPath -SettingName "EnableLUA"
Start-Sleep -Seconds 5
Nullify-RegistrySetting -RegistryPath $RegistryPath -SettingName "ConsentPromptBehaviorAdmin"
Start-Sleep -Seconds 5
Nullify-RegistrySetting -RegistryPath $RegistryPath -SettingName "ConsentPromptBehaviorUser"
Start-Sleep -Seconds 5
Nullify-RegistrySetting -RegistryPath $RegistryPath -SettingName "SupportFullTrustStartupTasks"
Start-Sleep -Seconds 5
Nullify-RegistrySetting -RegistryPath $RegistryPath -SettingName "LocalAccountTokenFilterPolicy"
Start-Sleep -Seconds 5
Nullify-RegistrySetting -RegistryPath $RegistryPath -SettingName "shutdownwithoutlogon"
Start-Sleep -Seconds 5

Display-Header
Write-Host "Getting LUA Settings"
Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\policies\system
Start-Sleep -Seconds 10

Display-Header
Write-Host "Restarting System (Forced)..."
Restart-Computer -Force
