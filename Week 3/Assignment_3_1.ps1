param ($network,$server)

1..254 | ForEach-Object {Resolve-DnsName -DNSOnly "$network.$_" -Server $server -ErrorAction Ignore}