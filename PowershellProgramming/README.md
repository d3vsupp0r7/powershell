- [Powershell commons commands](#powershell-commons-commands)
  - [PSModulePath](#psmodulepath)
  - [PSScriptRoot](#psscriptroot)
  - [PSCommandPath](#pscommandpath)
- [Poweshell Policy](#poweshell-policy)
  - [Get-ExecutionPolicy](#get-executionpolicy)
- [PS Scripts](#ps-scripts)
  - [1-Common_PS_env_commands.ps1](#1-common_ps_env_commandsps1)
  - [2-IfExample.ps1](#2-ifexampleps1)
  - [3-LoopsSample.ps1](#3-loopssampleps1)
  - [4-FileManagement.ps1](#4-filemanagementps1)
  - [4.1-FileManagement-BusinessExample.ps1](#41-filemanagement-businessexampleps1)


# Powershell commons commands

## PSModulePath
There is an environment variable called $ENV:PSModulePath. If we look at it, we will see all the locations where we can import a module (by module name instead of by path).

```
$env:PSModulePath -split ';'
```

## PSScriptRoot

Print the full path where runnig script resides 

```
Write-Host "Path:" $PSScriptRoot
```

## PSCommandPath

Print the name of running script

```
Write-Host "Script:" $PSCommandPath
```

# Poweshell Policy

The running script policy from windows

## Get-ExecutionPolicy

```
Set-ExecutionPolicy Unrestricted -Scope CurrentUser

Set-ExecutionPolicy Restricted -Scope CurrentUser

PS C:\WINDOWS\system32> Set-ExecutionPolicy -ExecutionPolicy Undefined -Scope LocalMachine

Modifica ai criteri di esecuzione
I criteri di esecuzione facilitano la protezione dagli script non attendibili. La modifica dei criteri di esecuzione
potrebbe esporre l'utente ai rischi di sicurezza descritti nell'argomento della Guida about_Execution_Policies
all'indirizzo https://go.microsoft.com/fwlink/?LinkID=135170. Modificare i criteri di esecuzione?
[S] Sì  [T] Sì a tutti  [N] No  [U] No a tutti  [O] Sospendi  [?] Guida (il valore predefinito è "N"): S
PS C:\WINDOWS\system32> Get-ExecutionPolicy -List

        Scope ExecutionPolicy
        ----- ---------------
MachinePolicy       Undefined
   UserPolicy       Undefined
      Process       Undefined
  CurrentUser       Undefined
 LocalMachine       Undefined
```

# PS Scripts

## 1-Common_PS_env_commands.ps1

Usage of Poweshell environment variables:

```
$PSScriptRoot
$PSCommandPath
$env:PSModulePath
```

## 2-IfExample.ps1

Using basic construct 
* if
* if/else
* switch

## 3-LoopsSample.ps1
Usage of loops in powershell
* DO-WHILE
* DO-UNTIL
* FOR 

## 4-FileManagement.ps1
* Get-Content -Path .\files-sample\names-sample-1.txt | Sort-Object 

## 4.1-FileManagement-BusinessExample.ps1
