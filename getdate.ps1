Get-EventLog -LogName System -Newest 1000 |
ForEach-Object -Begin {Get-Date} -Process {
    Out-File -FilePath Events.txt -Append -InputObject $_.Message
} -End {Get-Date}