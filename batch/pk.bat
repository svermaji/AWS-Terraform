set param=%1

if "%param%"=="" (
    set param=b
)

if "%param%"=="b" (
    packer build packer-ami.json
)

if "%param%"=="v" (
    packer validate packer-ami.json
)
