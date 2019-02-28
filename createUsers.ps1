$password =  ConvertTo-SecureString  -AsPlainText "ArchestrA" -Force

for($i = 1; $i -lt 51; $i++)
{
    $username = "testUser" + $i.ToString()
    New-LocalUser "$username" -Password $password -FullName "$username" -AccountNeverExpires -PasswordNeverExpires
    Add-LocalGroupMember -Group "Remote Desktop Users" -Member "$username"
    Add-LocalGroupMember -Group "Power Users" -Member "$username"
}