$DadosCSV = Import-Csv -Path ".\utilizadores.csv"
$DadosCSV | ForEach-Object {
    Write-Output ("Nome: $($_.nome), Idade: $($_.idade), Cargo: $($_.Cargo)")
}