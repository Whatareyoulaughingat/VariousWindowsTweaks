Set-ItemProperty -Path HKCU:\Control Panel\Mouse -Name MouseSpeed -Value "0"
Set-ItemProperty -Path HKCU:\Control Panel\Mouse -Name MouseThreshold1 -Value "0"
Set-ItemProperty -Path HKCU:\Control Panel\Mouse -Name MouseThreshold2 -Value "0"

[double]$lastLoadedDpi = [double](Get-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\ThemeManager -Name LastLoadedDPI)
[double]$scale = 96.00 / $lastLoadedDpi

switch($scale.ToString("0.00%"))
{
    "100.00%"
    {
        Set-ItemProperty -Path HKCU:\Control Panel\Mouse -Name SmoothMouseXCurve -Value [byte[]](0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xC0, 0xCC, 0x0C, 0x0, 0x0, 0x0, 0x0, 0x0, 0x80, 0x99, 0x19, 0x0, 0x0, 0x0, 0x0, 0x0, 0x40, 0x66, 0x26, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x33, 0x33, 0x0, 0x0, 0x0, 0x0, 0x0)
        Set-ItemProperty -Path HKCU:\Control Panel\Mouse -Name SmoothMouseYCurve -Value [byte[]](0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x38, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x70, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xA8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xE0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0)
    }
    "125.00%"
    {
        Set-ItemProperty -Path HKCU:\Control Panel\Mouse -Name SmoothMouseXCurve -Value [byte[]](0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x10, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x40, 0x0, 0x0, 0x0, 0x0, 0x0)
        Set-ItemProperty -Path HKCU:\Control Panel\Mouse -Name SmoothMouseYCurve -Value [byte[]](0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x38, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x70, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xA8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xE0, 0x0, 0x0, 0x0, 0x0, 0x0)
    }
    "150.00%"
    {
        Set-ItemProperty -Path HKCU:\Control Panel\Mouse -Name SmoothMouseXCurve -Value [byte[]](0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x30, 0x33, 0x13, 0x0, 0x0, 0x0, 0x0, 0x0, 0x60, 0x66, 0x26, 0x0, 0x0, 0x0, 0x0, 0x0, 0x90, 0x99, 0x39, 0x0, 0x0, 0x0, 0x0, 0x0, 0xC0, 0xCC, 0x4C, 0x0, 0x0, 0x0, 0x0, 0x0)
        Set-ItemProperty -Path HKCU:\Control Panel\Mouse -Name SmoothMouseYCurve -Value [byte[]](0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x38, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x70, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xA8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xE0, 0x0, 0x0, 0x0, 0x0, 0x0)
    }
    "175.00%"
    {
        Set-ItemProperty -Path HKCU:\Control Panel\Mouse -Name SmoothMouseXCurve -Value [byte[]](0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x60, 0x66, 0x16, 0x0, 0x0, 0x0, 0x0, 0x0, 0xC0, 0xCC, 0x2C, 0x0, 0x0, 0x0, 0x0, 0x0, 0x20, 0x33, 0x43, 0x0, 0x0, 0x0, 0x0, 0x0, 0x80, 0x99, 0x59, 0x0, 0x0, 0x0, 0x0, 0x0)
        Set-ItemProperty -Path HKCU:\Control Panel\Mouse -Name SmoothMouseYCurve -Value [byte[]](0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x38, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x70, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xA8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xE0, 0x0, 0x0, 0x0, 0x0, 0x0)
    }
    "200.00%"
    {
        Set-ItemProperty -Path HKCU:\Control Panel\Mouse -Name SmoothMouseXCurve -Value [byte[]](0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x90, 0x99, 0x19, 0x0, 0x0, 0x0, 0x0, 0x0, 0x20, 0x33, 0x33, 0x0, 0x0, 0x0, 0x0, 0x0, 0xB0, 0xCC, 0x4C, 0x0, 0x0, 0x0, 0x0, 0x0, 0x40, 0x66, 0x66, 0x0, 0x0, 0x0, 0x0, 0x0)
        Set-ItemProperty -Path HKCU:\Control Panel\Mouse -Name SmoothMouseYCurve -Value [byte[]](0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x38, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x70, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xA8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xE0, 0x0, 0x0, 0x0, 0x0, 0x0)
    }
    "225.00%"
    {
        Set-ItemProperty -Path HKCU:\Control Panel\Mouse -Name SmoothMouseXCurve -Value [byte[]]( 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xC0, 0xCC, 0x1C, 0x0, 0x0, 0x0, 0x0, 0x0, 0x80, 0x99, 0x39, 0x0, 0x0, 0x0, 0x0, 0x0, 0x40, 0x66, 0x56, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x33, 0x73, 0x0, 0x0, 0x0, 0x0, 0x0)
        Set-ItemProperty -Path HKCU:\Control Panel\Mouse -Name SmoothMouseYCurve -Value [byte[]](0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x38, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x70, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xA8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xE0, 0x0, 0x0, 0x0, 0x0, 0x0)
    }
    "250.00%"
    {
        Set-ItemProperty -Path HKCU:\Control Panel\Mouse -Name SmoothMouseXCurve -Value [byte[]](0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x40, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x60, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0)
        Set-ItemProperty -Path HKCU:\Control Panel\Mouse -Name SmoothMouseYCurve -Value [byte[]](0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x38, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x70, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xA8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xE0, 0x0, 0x0, 0x0, 0x0, 0x0)
    }
    "300.00%"
    {
        Set-ItemProperty -Path HKCU:\Control Panel\Mouse -Name SmoothMouseXCurve -Value [byte[]](0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x60, 0x66, 0x26, 0x0, 0x0, 0x0, 0x0, 0x0, 0xC0, 0xCC, 0x4C, 0x0, 0x0, 0x0, 0x0, 0x0, 0x20, 0x33, 0x73, 0x0, 0x0, 0x0, 0x0, 0x0, 0x80, 0x99, 0x99, 0x0, 0x0, 0x0, 0x0, 0x0)
        Set-ItemProperty -Path HKCU:\Control Panel\Mouse -Name SmoothMouseYCurve -Value [byte[]](0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x38, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x70, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xA8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xE0, 0x0, 0x0, 0x0, 0x0, 0x0)
    }
    "350.00%"
    {
        Set-ItemProperty -Path HKCU:\Control Panel\Mouse -Name SmoothMouseXCurve -Value [byte[]](0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xC0, 0xCC, 0x2C, 0x0, 0x0, 0x0, 0x0, 0x0, 0x80, 0x99, 0x59, 0x0, 0x0, 0x0, 0x0, 0x0, 0x40, 0x66, 0x86, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x33, 0xB3, 0x0, 0x0, 0x0, 0x0, 0x0)
        Set-ItemProperty -Path HKCU:\Control Panel\Mouse -Name SmoothMouseYCurve -Value [byte[]](0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x38, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x70, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xA8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xE0, 0x0, 0x0, 0x0, 0x0, 0x0)
    }
    Default
    {
        Write-Error "Failed to set a 1:1 pointer precision because the display scaling setting is either higher than 350% or lower than 100%"
    }
}

Set-ItemProperty -Path HKCU:\Control Panel\Mouse -Name MouseSensitivity -Value "10"

Write-Information "[MouseInputOptimizations] Optimizations applied successfully."