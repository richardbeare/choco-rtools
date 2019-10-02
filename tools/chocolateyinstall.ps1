$packageName= 'rtools'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://stat.ethz.ch/CRAN/bin/windows/testing/rtools40-x86_64.exe'
$url64      = 'https://stat.ethz.ch/CRAN/bin/windows/testing/rtools40-x86_64.exe'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "/verysilent /norestart"
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs

