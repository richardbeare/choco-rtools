$packageName= 'rtesting'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://stat.ethz.ch/CRAN/bin/windows/testing/R-testing-win.exe'
$url64      = 'https://stat.ethz.ch/CRAN/bin/windows/testing/R-testing-win.exe'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "/verysilent /norestart"
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs

