set-location C:\Users\felipe.escobedo.DUNOSUSA01\Desktop
new-item alias:np -value C:\Windows\System32\notepad.exe
Import-Module posh-git
Import-Module oh-my-posh
$ThemeSettings.GitSymbols.BranchSymbol = [char]::ConvertFromUtf32(0xE0A0)
$DefaultUser = 'eosfelipe'
Set-Theme paradox
Clear-Host