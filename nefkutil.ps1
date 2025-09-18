# My Ultimate Windows Utility
# Версия 1.0
Write-Host "Запуск My Ultimate Windows Utility..." -ForegroundColor Green

# Пример функций (добавь свои)
function Show-Menu {
    Write-Host "1. Очистка системы"
    Write-Host "2. Установка софта"
    Write-Host "3. Выход"
    $choice = Read-Host "Выберите опцию"
    switch ($choice) {
        1 { Write-Host "Очистка запущена..." }
        2 { Write-Host "Установка софта..." }
        3 { exit }
        default { Write-Host "Неверный выбор!" }
    }
}

# Основной цикл
do {
    Show-Menu
} while ($true)

# Добавь обработку ошибок, логи и т.д. для robustness
