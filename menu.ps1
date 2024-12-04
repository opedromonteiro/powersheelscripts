function Show-RPPSMenu {
    param(
        [string]$Titulo,
        [string[]]$OpcoesMenu
    )
    
    $Separador = "*" * 47

    Clear-Host
    Write-Host $Separador
    Write-Host "$Titulo"
    Write-Host $Separador
    foreach($opcao in $OpcoesMenu) {
        Write-Host "$opcao"
    }
}

Show-RPPSMenu -Titulo "Menu Principal" -OpcoesMenu @(
    "1 - Visualizar a data",
    "2 - Visualizar o conteudo do diretorio atual.",
    "3 - IP.",
    "S - Sair"
)