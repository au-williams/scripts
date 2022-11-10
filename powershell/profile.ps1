Import-Module "C:\tools\poshgit\dahlbyk-posh-git-9bda399\src\posh-git.psd1"
Set-PSReadlineOption -BellStyle None
Set-Location "c:\Source Control\"

function prompt {
  $realLASTEXITCODE = $LASTEXITCODE

  # Reset color, which can be messed up by Enable-GitColors
  # $Host.UI.RawUI.ForegroundColor = $GitPromptSettings.DefaultForegroundColor

  Write-Host ""
  Write-Host "$ENV:USERNAME@" -NoNewline -ForegroundColor DarkYellow
  Write-Host "$ENV:COMPUTERNAME " -NoNewline -ForegroundColor Magenta

  if ($null -ne $s) {
    # color for PSSessions
    Write-Host " (`$s: " -NoNewline -ForegroundColor DarkGray
    Write-Host "$($s.Name)" -NoNewline -ForegroundColor Yellow
    Write-Host ") " -NoNewline -ForegroundColor DarkGray
  }

  Write-Host $($(Get-Location) -replace ($env:USERPROFILE).Replace('\', '\\'), "~") -NoNewline -ForegroundColor Green
  Write-Host " : " -ForegroundColor DarkGray

  $global:LASTEXITCODE = $realLASTEXITCODE
  $isGitDirectory = git rev-parse --is-inside-work-tree

  Write-VcsStatus
  if ($isGitDirectory) { Write-Host "" }
  return "$ "
}

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

Clear-Host
Write-Host "Hello, $ENV:USERNAME! " -NoNewline
