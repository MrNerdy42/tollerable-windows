Get-ScheduledTask | Where-Object {$_.TaskName -like "ASUS*"} | ForEach-Object -Process {Stop-ScheduledTask -InputObject $_; Disable-ScheduledTask -InputObject $_;}
Get-Service | Where-Object {$_.Name -like "ASUS*"} | Set-Service -StartupType Disabled -Status Stopped
Get-Service | Where-Object {$_.Name -eq "ArmouryCrateControlInterface"} | Set-Service -StartupType Disabled -Status Stopped
#Get-PnpDevice | Where-Object {$_.FriendlyName -like "ASUS System Control Interface*"} | Disable-PnpDevice -Confirm:$false
#Get-PnpDevice | Where-Object {$_.FriendlyName -eq "Armoury Crate Control Interface"} | Disable-PnpDevice -Confirm:$false
