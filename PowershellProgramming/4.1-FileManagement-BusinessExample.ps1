#########################################################
# 4.1-FileManagement-BusinessExample.ps1
#  
#
#########################################################
Write-Host `n*******************************************************************
Write-Host `n** Directly Print file: fileA.properties                         **
$file1 = Get-Content -Path .\properties-files\fileA.properties | Sort-Object 
Write-Host var type
Write-Host $file1.GetType()
##
Write-Host `n*******************************************************************
Write-Host `n** Directly Print file  fileB.properties                         **
$file2 = Get-Content -Path .\properties-files\fileB.properties | Sort-Object 
Write-Host var type
Write-Host $file2.GetType()
##
Write-Host `n*******************************************************************
Write-Host `n** Directly Print file                                           **
Write-Host `n*** Printing file1: fileA.properties ***
Write-Host File1 printing
for($i=0; $i -lt $file1.Length; $i++)   {   
    $lineFile1 = $file1[$i] 
    #Print string
    $lineFile1
    #$lineFile1 is a string not an hashtable
    #Write-Host $lineFile1.Key
  }
##
Write-Host `n***************************************************************************
Write-Host `n*** Save file into HASH sctructure: file1AsHash: convertfrom-stringdata ***
$file1AsHash = convertfrom-stringdata (Get-Content -Path .\properties-files\fileA.properties -Raw | Sort-Object )
$file1AsHash  | Sort-Object #Sort-Object Not working on System.Collections.Hashtable
Write-Host var type
Write-Host $file1AsHash.GetType()
$file1AsHash 

Write-Host `n*******************************************************************
Write-Host `n*** HASH file1AsHash: onvertfrom-stringdata - TEST 2 NOT WORKING***
$file1AsHash | Sort-Object name
#$file1AsHash

Write-Host `n*******************************************************************
Write-Host `n*** HASH file1AsHash: convertfrom-stringdata - TEST 3 WORKING***
$file1AsHash.GetEnumerator() | Sort-Object  name
#$file1AsHash
$finalResult = $file1AsHash.GetEnumerator() | Sort-Object  name
Write-Host `n*******************************************************************
Write-Host `n*** FINAL RESULT - START ***
$finalResult
Write-Host `n*** FINAL RESULT -   END ***
Write-Host `n****************************

Write-Host `n************************************************************
#$sortedHash = [System.Collections.SortedList]::new()
Write-Host *** SORTED HASH ***
$hash = [System.Collections.SortedList] $file1AsHash
$hash
Write-Host var type
Write-Host $hash.GetType()
Write-Host Hash size: $hash.count
Write-Host Format as output string
#Formatting output string
for($i=0; $i -lt $hash.count; $i++)   {   
 Write-Host("`t{0}:`t{1}" -f $hash.GetKey($i), $hash.GetByIndex($i) );
}

Write-Host `n*************************************************************************
Write-Host `n** Wrtite to file a sorted HASH                                        **
Write-Host *** SORTED HASH ***

$filenamePropertiesOut1 = $PSScriptRoot + "\properties-files\output-properties\output-properties-1.properties"
if (Test-Path $filenamePropertiesOut1) 
{
  Remove-Item $filenamePropertiesOut1
}
$hash.GetEnumerator() | Sort-Object Name |
ForEach-Object {"{0}={1}" -f $_.Name,$_.Value} |
Add-Content $filenamePropertiesOut1 