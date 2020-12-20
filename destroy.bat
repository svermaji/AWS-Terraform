call setenv.bat
%BAT_HOME%\destroy-iam.bat
rem param "ami" can be passed so with infra ami will also destroy
%BAT_HOME%\destroy-infra.bat %1
ruby ruby-clean-ami.rb
