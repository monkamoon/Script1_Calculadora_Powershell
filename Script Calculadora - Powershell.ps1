do {
# Calculadora em PowerShell

# Primeiro número - read-host significa para o usuário inserir um valor
# variáveis sempre com $ na antes
$num1 = Read-Host "Digite o primeiro numero"

# Solicita o segundo número
$num2 = Read-Host "Digite o segundo numero"

# Solicita a operação
$operacao = Read-Host "Escolha a operação (+, -, *, /)"

# Converte os números para tipo numérico
# Read-Host sempre retorna uma string, dessa forma, utilizamos o double para "converter a número", double aceita números com v´rigula/ponto
$num1 = [double]$num1
$num2 = [double]$num2

# Realiza a operação
# switch - menu de decisões
# As chaves significam que será executado apenas se a condição for verdadeira
switch ($operacao) {
    "+" { $resultado = $num1 + $num2 }
    "-" { $resultado = $num1 - $num2 }
    "*" { $resultado = $num1 * $num2 }
    "/" {
        if ($num2 -ne 0) {
            $resultado = $num1 / $num2
        } else {
            $resultado = "Erro: Divisão por zero!"
        }
    }
    default { $resultado = "Operação inválida!" }
}
# -ne significa "not equal"

# Mostra o resultado
Write-Host "=========================" -ForegroundColor Blue
Write-Host "      RESULTADO: $resultado" -ForegroundColor Blue
Write-Host "=========================" -ForegroundColor Blue

# Loop continuação
    $continuar = Read-Host "Deseja continuar? (s/n)"
} while ($continuar -ne "n")