#! .ps1
#
# AUTHOR : P.Hoogeveen
# AKA    : x0xr00t 
# BUILD  : 31102021
# TOOL   : Change LUA


Write-Host "000000000000slo0ppyr00t000000000000"
Write-Host "0 Sl0ppyR00tNullify Lua Settings  0"
Write-Host "000000000000slo0ppyr00t000000000000"
Write-Host ""
Write-Host ""
Write-Host " {Sl0ppyR00t} Getting LUA Settings...."
sleep 4
Write-Host "" 
Write-Host "{Sl0ppyR00t} Initializing..."
Write-Host "" 
Get-ItemProperty HKLM:Software\Microsoft\Windows\CurrentVersion\policies\system
Write-Host ""
Write-Host ""
sleep 4
Write-Host "000000000000slo0ppyr00t000000000000"
Write-Host "0 Sl0ppyR00t Nullify EnableLUA    0"
Write-Host "000000000000slo0ppyr00t000000000000"
sleep 5
$val = Get-ItemProperty -Path hklm:software\microsoft\windows\currentversion\policies\system -Name "EnableLUA"
if($val.EnableLUA -ne 0)
{
 set-itemproperty -Path hklm:software\microsoft\windows\currentversion\policies\system -Name "EnableLUA" -value 0 
}
Write-Host ""
Get-ItemProperty -Path HKLM:Software\Microsoft\Windows\CurrentVersion\policies\system -Name EnableLUA
Write-Host ""
Write-Host "" 
sleep 5
Write-Host "{Sl0ppyR00t}  Successfull Nullified EnableLUA"
sleep 3
Write-Host ""
Write-Host ""
Write-Host "0000000000000000000slo0ppyr00t000000000000000000000"
Write-Host "0 Sl0ppyR00t Nullify ConsentPromptBehaviorAdmin    0"
Write-Host "0000000000000000000slo0ppyr00t000000000000000000000"
sleep 5
$val = Get-ItemProperty -Path hklm:software\microsoft\windows\currentversion\policies\system -Name "ConsentPromptBehaviorAdmin"
if($val.ConsentPromptBehaviorAdmin -ne 0)
{
 set-itemproperty -Path hklm:software\microsoft\windows\currentversion\policies\system -Name "ConsentPromptBehaviorAdmin" -value 0
}
Write-Host ""
Get-ItemProperty -Path HKLM:Software\Microsoft\Windows\CurrentVersion\policies\system -Name ConsentPromptBehaviorAdmin
Write-Host ""
Write-Host ""
sleep 5 
Write-Host "{Sl0ppyR00t}  Successfull Nullified ConsentPromptBehaviorAdmin"
sleep 5
Write-Host ""
Write-Host ""
Write-Host "0000000000000000000slo0ppyr00t000000000000000000000"
Write-Host "0 Sl0ppyR00t Nullify ConsentPromptBehaviorUser    0"
Write-Host "0000000000000000000slo0ppyr00t000000000000000000000"
sleep 5
$val = Get-ItemProperty -Path hklm:software\microsoft\windows\currentversion\policies\system -Name "ConsentPromptBehaviorUser"
if($val.ConsentPromptBehaviorUser -ne 0)
{
 set-itemproperty -Path hklm:software\microsoft\windows\currentversion\policies\system -Name "ConsentPromptBehaviorUser" -value 0
}
Write-Host ""
Get-ItemProperty -Path HKLM:Software\Microsoft\Windows\CurrentVersion\policies\system -Name ConsentPromptBehaviorUser
Write-Host ""
Write-Host ""
sleep 5
Write-Host "{Sl0ppyR00t}  Successfull Nullified ConsentPromptBehaviorUser"
sleep 3
Write-Host ""
Write-Host ""
Write-Host "0000000000000000000slo0ppyr00t000000000000000000000"
Write-Host "0 Sl0ppyR00t Nullify SupportFullTrustStartupTask  0"
Write-Host "0000000000000000000slo0ppyr00t000000000000000000000"
sleep 5
$val = Get-ItemProperty -Path hklm:software\microsoft\windows\currentversion\policies\system -Name "SupportFullTrustStartupTasks"
if($val.SupportFullTrustStartupTasks -ne 0)
{
 set-itemproperty -Path hklm:software\microsoft\windows\currentversion\policies\system -Name "SupportFullTrustStartupTasks" -value 0
}
Write-Host ""
Get-ItemProperty -Path HKLM:Software\Microsoft\Windows\CurrentVersion\policies\system -Name SupportFullTrustStartupTask
Write-Host ""
Write-Host ""
sleep 5
Write-Host "{Sl0ppyR00t}  Successfull Nullified SupportFullTrustStartupTask"
sleep 3
Write-Host ""
Write-Host ""
Write-Host "000000000000000000000slo0ppyr00t00000000000000000000000"
Write-Host "0 Sl0ppyR00t Nullify LocalAccountTokenFilterPolicy    0"
Write-Host "000000000000000000000slo0ppyr00t00000000000000000000000"
sleep 5
$val = Get-ItemProperty -Path hklm:software\microsoft\windows\currentversion\policies\system -Name "LocalAccountTokenFilterPolicy"
if($val.LocalAccountTokenFilterPolicy -ne 0)
{
 set-itemproperty -Path hklm:software\microsoft\windows\currentversion\policies\system -Name "LocalAccountTokenFilterPolicy" -value 0
}
Write-Host ""
Get-ItemProperty HKLM:Software\Microsoft\Windows\CurrentVersion\policies\system.LocalAccountTokenFilterPolicy
Write-Host ""
Write-Host ""
sleep 5
Write-Host "{Sl0ppyR00t}  Successfull Nullified LocalAccountTokenFilterPolicy"
sleep 3
Write-Host ""
Write-Host ""
Write-Host "000000000000000000000slo0ppyr00t00000000000000000000000"
Write-Host "0 Sl0ppyR00t Nullify shutdownwithoutlogon             0"
Write-Host "000000000000000000000slo0ppyr00t00000000000000000000000"
sleep 5
$val = Get-ItemProperty -Path hklm:software\microsoft\windows\currentversion\policies\system -Name "shutdownwithoutlogon"
if($val.LocalAccountTokenFilterPolicy -ne 0)
{
 set-itemproperty -Path hklm:software\microsoft\windows\currentversion\policies\system -Name "shutdownwithoutlogon" -value 0
}
Write-Host ""
Get-ItemProperty -Path HKLM:Software\Microsoft\Windows\CurrentVersion\policies\system -Name shutdownwithoutlogon
Write-Host ""
Write-Host ""
sleep 5
Write-Host "{Sl0ppyR00t}  Successfull Nullified shutdownwithoutlogon"
sleep 3

Write-Host "000000000slo0ppyr00t0000000000000000"
Write-Host "0 Sl0ppyR00t Getting LUA Settings 0"
Write-Host "000000000slo0ppyr00t0000000000000000"

sleep 10 
Get-ItemProperty HKLM:Software\Microsoft\Windows\CurrentVersion\policies\system 
sleep 10

Write-Host "000000000slo0ppyr00t0000000000000000"
Write-Host "0 Sl0ppyR00t Restart System Forced 0"
Write-Host "000000000slo0ppyr00t0000000000000000"
Write-Host "We gonna Restart the System"

Restart-Computer -ComputerName $env:computername -Force
