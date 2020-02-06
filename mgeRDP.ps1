$server = "MSTSAPP502", "MSTSAPP503"
$user="owscrbd"
$password="dpass"
foreach($srv in $server)
{
cmdkey /generic:TERMSRV/$srv /user:$User /pass:$password
mstsc /v:$srv
}
