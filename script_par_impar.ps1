# TP3 - PowerShell | Alumno: Cristian Miranda | OS: Linux Mint
# Programa que identifica números pares e impares con marca de tiempo

# Configurar UTF-8 para mostrar correctamente acentos y signos en Linux
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$OutputEncoding = [System.Text.Encoding]::UTF8

Write-Host "=== TP3 - Contador de pares e impares ===" -ForegroundColor Cyan
Write-Host ""

# Pedir el número límite al usuario
$entrada = Read-Host "Ingresa un numero limite (entero positivo)"

# Validación de entrada (mejora de seguridad)
if ($entrada -match '^\d+$' -and [int]$entrada -gt 0) {
    $limite = [int]$entrada
    
    Write-Host ""
    Write-Host "Contando desde 1 hasta $limite..." -ForegroundColor Yellow
    Write-Host ""
    
    # Ciclo for desde 1 hasta el límite
    for ($i = 1; $i -le $limite; $i++) {
        # Obtener la hora actual
        $hora = Get-Date -Format "HH:mm:ss"
        
        # Condición if para identificar par o impar
        if ($i % 2 -eq 0) {
            Write-Host "[$hora] Numero $i : PAR" -ForegroundColor Green
        } else {
            Write-Host "[$hora] Numero $i : IMPAR" -ForegroundColor Magenta
        }
    }
    
    Write-Host ""
    Write-Host "Fin del conteo." -ForegroundColor Cyan
} else {
    Write-Host ""
    Write-Host "Error: Debes ingresar un numero entero positivo." -ForegroundColor Red
    Write-Host "Ejemplo valido: 10" -ForegroundColor Yellow
}