<###########################################
****script template for Darius******

App Title

Name

Date

############################################>


# Sets error log (delete this note before deploying)

$error.clear() 

$ErrorActionPreference = "SilentlyContinue"


<###############################################
Variables
################################################>

$var = ""

$var2 = @() 

$Var3 = $var1 += $var2 
          

<##############################################
.Net Assemblies (add more if needed, keep these 
for default)
##############################################>

Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

<###############################################
Function(if neededed--delete before deploying)
###############################################>

Function Get-FilesByDate
{
 Param(
  [string[]]$fileTypes,
  [int]$month,
  [int]$year,
  [string[]]$path)
   Get-ChildItem -Path $path -Include $filetypes -Recurse |
   Where-Object {
   $_.lastwritetime.month -eq $month -AND $_.lastwritetime.year -eq $year }
  } #end function Get-FilesByDate



<################################################
Action(delete before deploying)
#################################################>

try{
    
    

 } 
 Catch {

## This catch just creates an error file for further investigation

$Error | Out-File -FilePath 'c:\temp\*****CHANGEFILENAMEBEFOREDEPLOYING.TXT' -Force

}


<#################################################
Restarts, error Codes, user warnings, etc
##################################################>