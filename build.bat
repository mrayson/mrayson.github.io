@REM ##############################################################################
@REM Start up miniconda shell on windows
@REM ############################################################################### 
@REM Test first character and last character of %1 to see if first character is a "
@REM   but the last character isn't.
@REM This was a bug as described in https://github.com/ContinuumIO/menuinst/issues/60
@REM When Anaconda Prompt has the form
@REM   %windir%\system32\cmd.exe "/K" "C:\Users\builder\Miniconda3\Scripts\activate.bat" "C:\Users\builder\Miniconda3"
@REM Rather than the correct
@REM    %windir%\system32\cmd.exe /K ""C:\Users\builder\Miniconda3\Scripts\activate.bat" "C:\Users\builder\Miniconda3""
@REM this solution taken from https://stackoverflow.com/a/31359867

@set "_args1=%1"
@set _args1_first=%_args1:~0,1%
@set _args1_last=%_args1:~-1%
@set _args1_first=%_args1_first:"=+%
@set _args1_last=%_args1_last:"=+%
@set _args1=

@if "%_args1_first%"=="+" if NOT "%_args1_last%"=="+" (
    @CALL "%~dp0..\Library\bin\conda.bat" activate
    @GOTO :End
)

@CALL "%~dp0..\Library\bin\conda.bat" activate %*

:End
@set _args1_first=
@set _args1_last=

@REM ######################################################################
@REM build the actual doc
mkdocs build

@REM 
xcopy site . /e /i /y

START mkdocs serve
"C:\Program Files\Mozilla Firefox\firefox.exe" http://127.0.0.1:8000
pause

REM #sitedir=site
REM sitedir=website
REM mv mkdocs.yml $sitedir
REM cp -r site_tmp/* $sitedir
REM rm -r site_tmp
REM #mv docs/ $sitedir
REM rm -r docs/
REM cd $sitedir


