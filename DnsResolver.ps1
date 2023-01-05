#needed to get IP addresses for a chunk of websites all at once to update firewall exceptions

$sites = @('google.com','facebook.com','cnn.com') #Replace with the websites you are trying to get IP addresses for 

$tak = foreach ($site in $sites) {
    Resolve-DnsName   
}

$tak | select name, IPaddress | out-file C:\users\%username%\Desktop\DNSname.csv
