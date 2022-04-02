#########################################################
# 1-Common_PS_env_commands.ps1
#   Usage of Poweshell most common environment variables
#   $PSScriptRoot       :
#   $PSCommandPath      :
#   $env:PSModulePath   : 
#########################################################
Write-Host `n********************************************
Write-Host `n*                                          *
Write-Host `n* 1. PowerShell - PS Environment command   *
Write-Host `n*                                          *
Write-Host `n********************************************
#
Write-Host `n*********************************************
Write-Host `n** Environment variable: PSScriptRoot      **
Write-Host "Path Script ROOT:" $PSScriptRoot
Write-Host `n*********************************************
##
Write-Host `n*********************************************
Write-Host `n** Environment variable: PSCommandPath     **
Write-Host "Script:" $PSCommandPath
Write-Host `n*********************************************
##
Write-Host `n*********************************************
Write-Host `n** Environment variable:  PSModulePath     **
$env:PSModulePath -split ';'
Write-Host `n*********************************************