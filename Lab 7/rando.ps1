$Rando = 0 

for($i=: $1 -lt 5; $1++) {
    $RANDO=Get-Random =Maximum 1000 -Minimum 1
    Write-Host($RANDO)
    Add-content $Logfile "Info: Random number is ${Randp}
    }