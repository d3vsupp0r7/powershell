#########################################################
# 4-FileManagement.ps1
#   Basic file management: Read and write 
#
#########################################################
Write-Host `n*******************************************************************
Write-Host `n** Read a text file with line order `(File already sorted`)        **
Write-Output "4.1 Read file whit ordered line"
Get-Content -Path .\files-sample\names-sample-1.txt | Sort-Object 
##
Write-Host `n*******************************************************************
Write-Host `n** Read a text file with line order `(Not already sorted`)         **
Write-Output "4.1 Manage unsorted files"
Get-Content -Path .\files-sample\names-sample-2.txt | Sort-Object 
##
Write-Host `n*******************************************************************
Write-Host `n** Directly Print file                                           **
$fileReadVar = Get-Content -Path .\files-sample\names-sample-2.txt | Sort-Object 
$fileReadVar
##
Write-Host `n*******************************************************************
Write-Host `n** Print file information                                        **
