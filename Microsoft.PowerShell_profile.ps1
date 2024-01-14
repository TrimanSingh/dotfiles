# Writes a new welcome prompt
Write-Host "Hello Triman!" -ForegroundColor DarkGree

# Set up the starship prompt
Invoke-Expression (&starship init powershell)
$ENV:STARSHIP_CONFIG = "$HOME\.config\starship.toml"

# Enables Up Arrow key to search backward for commands in the history.
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
# Enables Up Arrow key to search forward for commands in the history.
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
# Enables Ctrl+F for selecting next word in suggested prediction
Set-PSReadLineKeyHandler -Chord "Ctrl+f" -Function ForwardWord
# Enables Completion Plugin
Import-Module -Name CompletionPredictor
# Enable prediction from plugin and History
Set-PSReadLineOption -PredictionSource HistoryAndPlugin

# Enable icons
Import-Module -Name Terminal-Icons

# Aliases
New-Alias c clear

