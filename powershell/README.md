# profile.ps1

My PowerShell profile used with [Chocolatey](https://chocolatey.org/install#individual) and [PoshGit](https://community.chocolatey.org/packages/poshgit) installed. Thanks, Carter! {[/]

This `profile.ps1` file can be stored anywhere on the filesystem. The System32 `profile.ps1` file should be replaced with:

```powershell
$profile = "c:\source control\scripts-and-configs\powershell\profile.ps1" # profile.ps1 location
. $profile
```

System32 `profile.ps1` filepath: `C:\Windows\System32\WindowsPowerShell\v1.0\profile.ps1`

Note: On new installations, the following may need to be set!

- Executing `$Set-ExecutionPolicy Unrestricted` in PowerShell while running as administrator.
- Appending `-nologo` to the `Windows PowerShell` command line property in Terminal settings.
