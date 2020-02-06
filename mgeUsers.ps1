$users = "OWSCRBD", "OWSCRMD"
$password = ConvertTo-SecureString -AsPlainText "dpass" -Force
foreach ($un in $users)
{
	New-LocalUser "$un" -Password $password -FullName "$un" -AccountNeverExpires -PasswordNeverExpires
	Add-LocalGroupMember -Group "Power Users" -Member "$un"
    Add-LocalGroupMember -Group "Remote Desktop Users" -Member "$un"
    Add-LocalGroupMember -Group "aaUsers" -Member "$un"
    Add-LocalGroupMember -Group "Administrators" -Member "$un"
}
