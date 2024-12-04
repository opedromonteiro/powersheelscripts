$number = Get-random -minimum 1 -Maximum 10
do {
    $guess = Read-Host -Prompt "What's your guess?"
    if ($guess -lt $number){
        write-putput 'Too low!'
    } elseif ($guess -gt $number) {
        Write-Output "Too high!"
    }
} while ($guess -ne $number) 