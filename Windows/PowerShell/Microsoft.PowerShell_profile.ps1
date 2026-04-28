# Theme

# LOCAL 
oh-my-posh init pwsh --config 'C:\Users\AsusTufEnzo\.config\atomic.omp.json' | Invoke-Expression
# URL
# oh-my-posh init pwsh --config 'URL' | Invoke-Expression

# Custom alias
Set-Alias -Name su -Value admin 
Set-Alias -Name sudo -Value admin
function l { Get-ChildItem -Path $pwd -File }

# Custom Start-up
# Invoke-Expression (&starship init powershell)
$ENV:STARSHIP_CONFIG = "C:\Users\AsusTufEnzo\.config\starship.toml"
oh-my-posh init pwsh | Invoke-Expression
neofetch
Import-Module -Name Terminal-Icons
