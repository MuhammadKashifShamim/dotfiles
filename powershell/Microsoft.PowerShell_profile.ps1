#Prompt Configuration
Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt -Theme personal

# Terminal Icons
Import-Module -Name Terminal-Icons

#PSReadLine Configuration
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadlineKeyHandler -Key '~' -Function AcceptSuggestion
Set-PSReadLineKeyHandler -Key 'F2' -Function SwitchPredictionView
Set-PSReadLineKeyHandler -Chord 'Shift+Tab' -Function NextSuggestion
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar

# Fuzzy Finder Configuration
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PsReadlineChordReverseHistory 'Ctrl+r'

# Aliases
Set-Alias -Name vi -Value nvim
Set-Alias -Name g -Value git
Set-Alias -Name grep -Value findstr

# Utilities
function which ($command){
    Get-Command -Name $command -ErrorAction SilentlyContinue |
      Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
  }

function touch {
	$file = $args[0]
	if($file -eq $null){
		throw "No Filename Supplied"
	}
	if(Test-Path $file){
		throw "File Already Exists"
	}else{
		New-Item -ItemType File -Name($file)
	}
}
