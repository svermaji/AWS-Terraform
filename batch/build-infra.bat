set param=%1

if "%param%"=="ami" (
    call %BAT_HOME%\build-ami.bat
)

cd infra
call %BAT_HOME%\tf.bat p
call %BAT_HOME%\tf.bat a
cd ..