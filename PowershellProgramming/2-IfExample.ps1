#########################################################
# 2-IfExample.ps1
#   Basic programming, understanding powershell
#   if
#   if/else
#   switch 
#########################################################
Write-Host `n*********************************************
Write-Host `n** Variable Assignemnt                      **
$a=16  
$c=$a%2  
Write-Host `n*********************************************
Write-Host `n** Equal test on int values                **
## Equal
if($c -eq 0)  
{ Write-Output "The number is even"   }  
##
Write-Host `n*********************************************
Write-Host `n** Major test on int values                **
$a=25 
$b=20
# > -> -gt
if($a -gt $b)  
{ Write-Output "The value of variable a is greater than the value of variable b"   }  
##
Write-Host `n*********************************************
Write-Host `n** String test: Equals                     **
##  check the strings
$a="True"  
$b="True"  
# = -eq
if($a -eq "True")  
{  Write-Output " Both the strings are equal."  }  
##
Write-Host `n*********************************************
Write-Host `n** String test: Equals                     **
##  check the strings
$a="True"  
$b="True"  
# = -eq
if($a -eq "True")  
{  Write-Output " Both the strings are equal."  }  

if($a -eq $b) 
{  Write-Output " a and b strings: both the strings are equal."  }  
##  IF-ELSE
Write-Host `n*********************************************
Write-Host `n** IF-ELSE Tests                           **
Write-Output "If-Else example"
$a=15  
$c=$a%2  
if($c -eq 0)  
{   Write-Output "The number is even"   } 
    else  
{   Write-Output "The number is Odd"  } 
## ELSE-IF
Write-Host `n*********************************************
Write-Host `n** ELSE-IF Tests                           **
Write-Output "ELSE-IF example"
$a=0  
if ($a -gt 0)  
 {  Write-Output "Number is positive"   } 
 elseif($a -lt 0)  {  
    Write-Output "Number is negative"  
 } else  {  
    Write-Output " Number is zero"  
 }   
 ## SWITCH
Write-Host `n*********************************************
Write-Host `n** SWITCH Tests  working selection         **
Write-Output "SWITCH example"
$day=3  
switch($day)  {  
    1{Write-Output "The day is Sunday"}  
    2{Write-Output "The day is Monday"}  
    3{Write-Output "The day is Tuesday"}  
    4{Write-Output "The day is Wednesday"}  
    5{Write-Output "The day is Thursday"}  
    6{Write-Output "The day is Friday"}  
    7{Write-Output "The day is Saturday"}  
    Default { Write-Output  " You give a Wrong number"}
}  
Write-Host `n*********************************************
Write-Host `n** SWITCH Tests  - WRONG selection         **
Write-Output "SWITCH example"

$day=10
switch($day)  {  
    1{Write-Output "The day is Sunday"}  
    2{Write-Output "The day is Monday"}  
    3{Write-Output "The day is Tuesday"}  
    4{Write-Output "The day is Wednesday"}  
    5{Write-Output "The day is Thursday"}  
    6{Write-Output "The day is Friday"}  
    7{Write-Output "The day is Saturday"}  
    Default { Write-Output  " You give a Wrong number"}
}  