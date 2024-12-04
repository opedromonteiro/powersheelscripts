Try {
    Get-content './file.txt' -ErrorAction Stop
} Catch {
    Write-Error "O ficheiro não foi encontrado"
}