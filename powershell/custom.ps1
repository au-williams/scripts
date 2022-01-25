Import-Module 'C:\tools\poshgit\dahlbyk-posh-git-9bda399\src\posh-git.psd1'
Set-PSReadlineOption -BellStyle None

function prompt {
  $realLASTEXITCODE = $LASTEXITCODE

  Write-Host

  #Reset color, which can be messed up by Enable-GitColors
  #$Host.UI.RawUI.ForegroundColor = $GitPromptSettings.DefaultForegroundColor

  Write-Host "$ENV:USERNAME@" -NoNewline -ForegroundColor DarkYellow
  Write-Host "$ENV:COMPUTERNAME " -NoNewline -ForegroundColor Magenta

  if ($s -ne $null) {
    # color for PSSessions
    Write-Host " (`$s: " -NoNewline -ForegroundColor DarkGray
    Write-Host "$($s.Name)" -NoNewline -ForegroundColor Yellow
    Write-Host ") " -NoNewline -ForegroundColor DarkGray
  }

  #Write-Host " : " -NoNewline -ForegroundColor DarkGray
  Write-Host $($(Get-Location) -replace ($env:USERPROFILE).Replace('\', '\\'), "~") -NoNewline -ForegroundColor Green
  Write-Host " : " -ForegroundColor DarkGray

  $global:LASTEXITCODE = $realLASTEXITCODE

  Write-VcsStatus
  Write-Host ""
  return "$ "
}

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
