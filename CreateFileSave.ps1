Param (
    $Path
)

If (-Not $Path -eq '') {
    New-Item $Path 
    Write-Host "O ficheiro $Path foi criado"
} Else {
    Write-Error "Especifique o caminho para o ficheiro"
}