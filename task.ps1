#! /usr/lib64/powershell/pwsh

Get-AzDisk | Where-Object {$_.ResourceGroupName -eq "mate-azure-task-5"} | Where-Object {$_.DiskState -eq "Unattached"} | ConvertTo-Json | Out-File result.json