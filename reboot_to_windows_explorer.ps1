$regPath = "HKCU:\Software\Microsoft\Windows NT\CurrentVersion\Winlogon"
$valueName = "Shell"
$targetValue = "C:\Program Files (x86)\Steam\steam.exe"
$newValue = "explorer.exe"

# Check if registry path and value exist
if (Test-Path $regPath) {
    try {
        $currentValue = Get-ItemProperty -Path $regPath -Name $valueName -ErrorAction Stop | Select-Object -ExpandProperty $valueName
        Write-Output "Current value of 'Shell' is: $currentValue"

        if ($currentValue -eq $targetValue) {
            Set-ItemProperty -Path $regPath -Name $valueName -Value $newValue
            Write-Output "Value matched target. Updated 'Shell' to '$newValue'."
        } else {
            Write-Output "Value does not match target. No changes made."
        }
    } catch {
        Write-Output "Registry value '$valueName' does not exist at path: $regPath"
    }
} else {
    Write-Output "Registry path does not exist: $regPath"
}
