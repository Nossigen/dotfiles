Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadlineOption -ShowToolTips

Invoke-Expression (&starship init powershell)

function New-Workspace {komorebic.exe new-workspace}

Set-Alias -Name WM -Value komorebic.exe

function Home {cd ~}

function Start-WM { komorebic start -c ~/komorebi.json --whkd }
