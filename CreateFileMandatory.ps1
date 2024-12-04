<#(
Programmer....: (c) 2024 Pedro Monteiro
Date..........: 05/11/2024
Obs...........:
)#>

Param(
    [Parameter(Mandatory, HelpMessage = "Introduza o caminho e o nome do ficheiro: ")]
    [string]$Path
)

if (-Not $Path -eq '') {
    New-Item $Path
    Write-Host "O ficheiro $Path foi criado"
}
else {
    Write-Error "Não foi possivel criar o ficheiro."
}