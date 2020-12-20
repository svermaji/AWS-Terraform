set param=%1

cd infra
call %BAT_HOME%\tf.bat d

if "%param%"=="ami" (
    call %BAT_HOME%\destroy-ami.bat
)

cd ..