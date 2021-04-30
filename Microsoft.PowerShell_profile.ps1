Import-Module Get-ChildItemColor
new-item alias:np -value C:\Windows\System32\notepad.exe
New-Alias open ii
Set-Alias l Get-ChildItemColor -Option AllScope
Set-Alias ls Get-ChildItemColorFormatWide -Option AllScope
function cws { Set-Location c:\users\felipe.escobedo.DUNOSUSA01\Desktop\dev }
function cuserprofile { Set-Location ~ }
function acp() {
git add .
git commit -m "$1"
git push
}
Set-Alias ~ cuserprofile -Option AllScope
# Helper function to show Unicode character
function U
{
    param
    (
        [int] $Code
    )
 
    if ((0 -le $Code) -and ($Code -le 0xFFFF))
    {
        return [char] $Code
    }
 
    if ((0x10000 -le $Code) -and ($Code -le 0x10FFFF))
    {
        return [char]::ConvertFromUtf32($Code)
    }
 
    throw "Invalid character code $Code"
}

Import-Module posh-git
Import-Module oh-my-posh
$DefaultUser = 'eosfelipe'
#Set-Theme Zash
Set-Theme Material
# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward
Clear-Host
# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
