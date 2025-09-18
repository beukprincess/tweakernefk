# Загрузка сборки для WinForms
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Создание формы (окна)
$form = New-Object System.Windows.Forms.Form
$form.Text = "My Ultimate Windows Utility"
$form.Size = New-Object System.Drawing.Size(400,300)
$form.StartPosition = "CenterScreen"

# Создание метки (Label)
$label = New-Object System.Windows.Forms.Label
$label.Location = New-Object System.Drawing.Point(10,20)
$label.Size = New-Object System.Drawing.Size(280,20)
$label.Text = "Выберите опции для оптимизации:"
$form.Controls.Add($label)

# Чекбоксы для выбора опций
$checkbox1 = New-Object System.Windows.Forms.CheckBox
$checkbox1.Location = New-Object System.Drawing.Point(10,50)
$checkbox1.Size = New-Object System.Drawing.Size(200,20)
$checkbox1.Text = "Отключить телеметрию"
$checkbox1.Checked = $true
$form.Controls.Add($checkbox1)

$checkbox2 = New-Object System.Windows.Forms.CheckBox
$checkbox2.Location = New-Object System.Drawing.Point(10,80)
$checkbox2.Size = New-Object System.Drawing.Size(200,20)
$checkbox2.Text = "Удалить ненужные приложения"
$form.Controls.Add($checkbox2)

# Кнопка "Запустить"
$buttonRun = New-Object System.Windows.Forms.Button
$buttonRun.Location = New-Object System.Drawing.Point(10,120)
$buttonRun.Size = New-Object System.Drawing.Size(100,30)
$buttonRun.Text = "Запустить"
$buttonRun.Add_Click({
    if ($checkbox1.Checked) {
        Write-Host "Отключаем телеметрию..."
        # Тут твой код, например: Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "AllowTelemetry" -Value 0
    }
    if ($checkbox2.Checked) {
        Write-Host "Удаляем приложения..."
        # Пример: Get-AppxPackage *3DBuilder* | Remove-AppxPackage
    }
    [System.Windows.Forms.MessageBox]::Show("Операции выполнены!", "Успех")
})
$form.Controls.Add($buttonRun)

# Кнопка "Выход"
$buttonExit = New-Object System.Windows.Forms.Button
$buttonExit.Location = New-Object System.Drawing.Point(120,120)
$buttonExit.Size = New-Object System.Drawing.Size(100,30)
$buttonExit.Text = "Выход"
$buttonExit.Add_Click({ $form.Close() })
$form.Controls.Add($buttonExit)

# Показать форму
$form.ShowDialog()
