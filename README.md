# TP3 - PowerShell
**Alumno:** Cristian Miranda 
**Materia:** Programación para Seguridad Informática  
**Sistema Operativo:** Linux Mint  
**Fecha:** Octubre 2026

## Descripción

Script en PowerShell Core que solicita un número límite al usuario y cuenta desde 1 hasta ese número, identificando si cada valor es par o impar. En cada iteración se muestra la hora exacta utilizando el cmdlet `Get-Date`.

## Características técnicas

- Uso de `Read-Host` para entrada de datos desde consola.
- Ciclo `for` con contador desde 1 hasta el límite ingresado.
- Condición `if` con operador módulo (`%`) para detectar pares e impares.
- Cmdlet `Get-Date` con formato `HH:mm:ss` para mostrar la hora en cada iteración.
- Validación de entrada mediante expresión regular para aceptar solo enteros positivos.

## Adaptación a Linux Mint

- Se utiliza PowerShell Core (`pwsh`) multiplataforma.
- Se configura `UTF-8` al inicio del script para garantizar la correcta visualización de acentos y signos en la terminal de Linux.

## Ejecución

```bash
pwsh -File ./script_par_impar.ps1