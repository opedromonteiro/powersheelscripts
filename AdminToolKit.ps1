function Show-RPPSMenu {
    param(
        [string]$Titulo,
        [string[]]$OpcoesMenu
    )
    
    $Separador = "*" * 47

    Clear-Host
    Write-Verbose -Message "A inicializar o menu..."
    Write-Host $Separador
    Write-Host "$Titulo"
    Write-Host $Separador
    foreach($opcao in $OpcoesMenu) {
        Write-Host "$opcao"
    }
    Write-Verbose - Message "O menu foi apresentado..."
}
function Start-RPPSMenu {
    [CmdletBinding()]
    param()
    
    do {
        Show-RPPSMenu -Titulo "Menu Principal" -OpcoesMenu @(
            "1 - Visualizar a data",
            "2 - Visualizar o conteudo do diretorio atual.",
            "3 - IP.",
            "S - Sair"
        )

        $opcao = Read-Host "Seleciona uma opção de menu"

        switch($opcao) {
            '1' {
                Write_host "Opção 1"
            }
            '2' {
                Write_host "Opção 2"
            }
            '3' {
                Write_host "Opção 3"
            }
            'S' {
                Write_host "Adeus!"
            }
            default {
                Write-Host "Opção inválida"
                Start-Sleep -Seconds 2
            }
        }   
    } while($opcao -ne "S")
}
