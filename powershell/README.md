# Files

## • profile.ps1

My preferred PowerShell profile. Thanks Carter! {[/]

Should be used with [PoshGit](https://github.com/dahlbyk/posh-git) and [Chocolatey](https://chocolatey.org/install#individual) installed.

# Install

## • profile.ps1

This `profile.ps1` file can be stored anywhere on the filesystem. The `profile.ps1` file in `C:\Windows\System32\WindowsPowerShell\v1.0\profile.ps1` replaced with:

```powershell
$profile = "c:\source control\scripts-and-configs\powershell\profile.ps1" # your profile.ps1 path
. $profile
```
