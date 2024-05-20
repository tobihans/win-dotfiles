$env:EDITOR = "vim"

# Starship Prompt
$env:STARSHIP_CONFIG = "$HOME\Documents\PowerShell\config\starship.toml"
Invoke-Expression (&starship init powershell)

# Helpers & Alias & Functions
. $HOME\Documents\Powershell\functions.ps1
