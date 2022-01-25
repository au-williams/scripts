# custom.ps1

My custom (and preferred) PowerShell profile. Thanks Carter! {[/]

Should be used with [PoshGit](https://github.com/dahlbyk/posh-git) and [Chocolatey](https://chocolatey.org/install#individual) installed.

# profile.ps1

Used to change the location of `custom.ps1` from the default `Documents\WindowsPowerShell` directory.

- Must be placed in `C:\Windows\System32\WindowsPowerShell\v1.0\profile.ps1`
- `$profile` must equal the current full path to `custom.ps1`