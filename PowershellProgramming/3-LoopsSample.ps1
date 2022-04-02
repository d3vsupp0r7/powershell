#########################################################
# 3-LoopsSample.ps1
#   Basic programming, understanding powershell
#   *) DO-WHILE
#   *) DO-UNTIL
#   *) FOR 
#########################################################
Write-Host `n*********************************************
Write-Host `n** DO-WHILE LOOP                           **
Write-Output "1. DO-WHILE LOOP - START"
$i=1  
 do  
 {  
    Write-Output  $i  
 $i=$i+1  
 }while($i -le 10)  
 Write-Output "1. DO-WHILE LOOP - END"
##DO-UNTIL
Write-Host `n*********************************************
Write-Host `n** DO-UNTIL LOOP                           **
Write-Output "2. DO-UNTIL LOOP - START"
$array=1,2,3,4,5,6,7  
$i=0  
do{  
    Write-Output $array[$i]  
  $i=$i+1  
  } until ($i -eq $array.length)  
  Write-Output "2. DO-UNTIL LOOP - END"
## FOR
Write-Host `n*********************************************
Write-Host `n** FOR LOOP                                **
Write-Output "3. FOR LOOP - START"
for($x=1; $x -lt 10; $x=$x+1)   {   
    Write-Output $x   
}  
Write-Output "3. FOR LOOP - END"
## FOR: With array definition
Write-Host `n*********************************************
Write-Host `n** FOR LOOP                                **
Write-Output "4. FOR LOOP - ARRAY - START"
$arrcolors = "Red","Orange","Green","White","Blue","Indigo","black","Violet"  
for($i=0; $i -lt $arrcolors.Length; $i++)   {   
    $arrcolors[$i]  
  }  
Write-Output "4. FOR LOOP - ARRAY - END"
## FOR - ARRAY SORTING
Write-Host `n*********************************************
Write-Host `n** FOR LOOP with use of sort-object        **
Write-Output "4.1 FOR LOOP - ARRAY SORT - START"
$arrcolors2 = "Red","Orange","Green","White","Blue","Indigo","black","Violet"  | sort-object
#$arrcolors2 | sort-object  
for($i=0; $i -lt $arrcolors2.Length; $i++)   {   
    $arrcolors2[$i]  
  }
  
Write-Output "4.1 FOR LOOP - ARRAY SORT - END"

## FOR - ARRAY SORTING INVERSE ORDER
Write-Host `n********************************************************
Write-Host `n** FOR LOOP with use of sort-object -Descending       **
Write-Output "4.2 FOR LOOP - ARRAY SORT WITH DESCENDING ORDER - START"
$arrcolors2 = "Red","Orange","Green","White","Blue","Indigo","black","Violet"  | sort-object -Descending
#$arrcolors2 | sort-object  
for($i=0; $i -lt $arrcolors2.Length; $i++)   {   
    $arrcolors2[$i]  
  }
  
Write-Output "4.2 FOR LOOP - ARRAY SORT WITH DESCENDING ORDER - END"
###
Write-Host `n********************************************************************
Write-Host `n** FOR LOOP with use of sort-object based on string lenght        **
Write-Output "4.3 FOR LOOP - ARRAY SORT - START"
$arrcolors3 = "Red","Orange","Green","White","Blue","Indigo","black","Violet","blu"  | sort-object -Property Length  
#$arrcolors2 | sort-object  
for($i=0; $i -lt $arrcolors3.Length; $i++)   {   
    $arrcolors3[$i]  
  }
  
Write-Output "4.3 FOR LOOP - ARRAY SORT - END"