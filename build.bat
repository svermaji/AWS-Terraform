rem to change window title
call t

call setenv.bat
rem No need to create users again and again
rem call %BAT_HOME%\build-iam.bat

rem param "ami" can be passed so with infra ami will also created
call %BAT_HOME%\build-infra.bat %1
