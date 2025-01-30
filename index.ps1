$processName = "notepad"

#check notepad opened or not

$process = Get-Process -Name $processName -ErrorAction SilentlyContinue

if ($process) {

  Write-Output "Process '$processName' is running"
  Stop-Process -Name $processName -Force


} else {

  Write-Output "Process '$processName' is not running"


}
