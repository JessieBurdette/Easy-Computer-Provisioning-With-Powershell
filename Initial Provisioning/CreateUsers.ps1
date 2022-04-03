$(
$AdminPassword = Read-Host -AsSecureString
New-LocalUser "Admin" -Password $AdminPassword -FullName "System Admin" -Description "Admin Who is managing this system" -AccountNeverExpires
Enable-LocalUser -Name "Admin"
Add-LocalGroupMember -Group "Administrators" -Member "Admin"

$UserPassword = Read-Host -AsSecureString
New-LocalUser "User" -Password $UserPassword -FullName "System User" -Description "User who is assigned to this system" -AccountNeverExpires
Enable-LocalUser -Name "User"

) *>&1 > ".\Lastrun.log"