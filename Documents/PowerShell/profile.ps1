$env:EDITOR = "nvim"

# Gsudo
Import-Module gsudoModule
# Starship
Invoke-Expression (&starship init powershell)

# Helpers & Alias & Functions
. $HOME\Documents\Powershell\aliases.ps1
