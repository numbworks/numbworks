## Revision History

| Date | Author | Description |
|---|---|---|
| 2024-08-12 | numbworks | Created. |

## Useful Commands

This document collects in one place all the useful commands that I (unfortunately) need to type often.

#### Disable Powerhell's auto-completion

```powershell
if (-not (Test-Path $PROFILE)) { $null = New-Item -Force $PROFILE }
Invoke-Item $PROFILE
Set-PSReadLineOption -PredictionSource None
```