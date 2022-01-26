# profile.ps1

My custom PowerShell profile used with [PoshGit](https://github.com/dahlbyk/posh-git) and [Chocolatey](https://chocolatey.org/install#individual) installed. Thanks Carter! {[/]

This `profile.ps1` file can be stored anywhere on the filesystem. The System32 `profile.ps1` file should be replaced with:

```powershell
$profile = "c:\source control\scripts-and-configs\powershell\profile.ps1" # profile.ps1 location
. $profile
```

**Full path:** `C:\Windows\System32\WindowsPowerShell\v1.0\profile.ps1`
