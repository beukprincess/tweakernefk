# My Ultimate Windows Utility
# Версия 1.0
Write-Host "Запуск My Ultimate Windows Utility..." -ForegroundColor Green

# Пример функций (добавь свои)
function Show-Menu {
    Write-Host "1. Clean up system"
    Write-Host "2. Install software"
    Write-Host "3. Exit"
    $choice = Read-Host "Select Option"
    switch ($choice) {
        1 { Write-Host "Cleaning..." }
        2 { Write-Host "Installing..." }
        3 { exit }
        default { Write-Host "Wrong!" }
    }
}

# Основной цикл
do {
    Show-Menu
} while ($true)

# Добавь обработку ошибок, логи и т.д. для robustness
