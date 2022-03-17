Get-Executionpolicy

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine

find-module -Name invokequery
install-module -name invokequery 
$creds = Get-Credential
$query = New-SqlQuery -Sql "SELECT * FROM artistas"
 

Invoke-MySqlQuery -SqlQuery $query  -Credential $creds -Server localhost:3306 -Database musimundos
