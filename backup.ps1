<#(
Programmer....: (c) 2024 Pedro Monteiro
Date..........: 15/11/2024
Obs...........:
)#>

Param(
    [string]$Path = './app',
    [String]$DestinationPath = './',
    [Switch]$PathIsWebApp
)        

If ($PathIsWebApp -eq $true){
    Try {
        $ContainsApplicationFiles = "$((Get-ChildItem $Path).Extension | Sort-Object -Unique)" -match '\.js|\.html|\.css'
        If ( -Not $ContainsApplicationFiles) {
            Throw "Não é uma aplicação web"
        } Else {
            Write-Host "A fonte parece ser uma uma aplicação web, a continuar.."
        }
    }   Catch {
        Throw "O backup não foi criado: $($_.Exception.Message)"
    }
}

If (-Not (Test-Path $Path)) {
    Throw "O diretório $Path não existe, por favor indique uma path válida"
}

$date = Get-Date -format "yyyy-MM-dd"
$DestinationFile = "$($DestinationPath + 'backup-' + $date + '.zip')"
If (-Not (Test-Path $DestinationFile)) {
    Compress-Archive -Path $Path -CompressionLevel 'Fastest' -DestinationPath "$($DestinationPath + 'backup-' + $date)" 
    Write-Host "Created backup at $($DestinationPath + 'backup-' + $date + '.zip')"
} Else {
    Write-Error "Especifique o caminho para o ficheiro" 
}
