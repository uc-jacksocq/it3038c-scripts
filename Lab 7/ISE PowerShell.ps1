
#$Hello = "Hello, PowerShell"
#Write-Host($Hello)
function getIP {
(Get-NetIPAddress).IPv4address | select-string "192*"
}

write-host(getIP)
$IP = getIP
$Date = 
$Body =- "This machine's IP $IP. User is $env:username. Hostname is $, PowerShell version $Host.VersionMajor

sned-mailMessage -to "jacksocq@mail.uc.edu" -from "jacksocq@mail.uc.edu" -Subject "IT3038c Window Sysinfro -Body &body
-Smtpserver smtph.google.com -port 587 -UseSSL -Credentials (Get-Credential) 

write-Host("This Machine IP is $IP")
write-Host("THis machine IP is "{0}" -f $IP)