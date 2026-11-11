$s = "8.8.8.8"
for ($i = 1; $i -le 3; $i++) {
  Write-Host "Intento $i - $(Get-Date)"
  if (Test-Connection $s -Count 1 -Quiet) { Write-Host "Respondio" } else { Write-Host "No respondio" }
  if ($i % 2 -eq 0) { Write-Host "PAR" } else { Write-Host "IMPAR" }
}
Write-Host "El monitoreo ha concluido con exito."
