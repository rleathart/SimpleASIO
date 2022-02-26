@echo off
setlocal

if not exist build mkdir build
pushd build

set PlatformLibs=kernel32.lib advapi32.lib ole32.lib
set CommonCompilerFlags=-FC -Zi -Od -nologo -Wall -wd4061 -wd5045 -wd4100

cl %CommonCompilerFlags% -Fe:SimpleASIOExample ..\src\main.c -link %PlatformLibs%

set CLError=%ERRORLEVEL%

popd build
exit /B %CLError%
