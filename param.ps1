$status = 'ko'
if ($status -eq 'ok')
{
    write-host $false
} ElseIf ($status -eq 'ko') {
    Write-Host $true
} Else {
    Write-Host $false
}