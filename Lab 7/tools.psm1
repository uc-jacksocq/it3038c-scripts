function getIP {
    (Get-NetIPAddress).IPV4Address | Select-string "192*"
    return $IP.IPV4Address
}