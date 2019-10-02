all: build

build:
	choco pack *.nuspec

install:
	choco install rtools -s *.nupkg -f -y

upgrade:
	choco upgrade rtools -s *.nupkg -f -y

push:
	choco apikey -k %CHOCOLATEY_KEY% -source https://chocolatey.org/
	choco push *.nupkg -s https://chocolatey.org/
