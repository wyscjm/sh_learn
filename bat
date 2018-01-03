# dir
[code=BatchFile]@echo off
echo 当前盘符：%~d0
echo 当前盘符和路径：%~dp0
echo 当前批处理全路径：%~f0
echo 当前盘符和路径的短文件名格式：%~sdp0
echo 当前CMD默认目录：%cd%
pause
[/code] 


# fast open
``` bat
@echo off & setlocal 

rem :loop 
rem set /p answer=Do you want to continue (y/n) 
rem echo You chose: %answer% 
rem if /i {%answer%}=={y} goto :yes 
rem if /i {%answer%}=={n} goto :no 
rem echo Invalid selection, try again&&goto loop 

:yes 

ECHO ================ MENU =============== 

ECHO ------------------------------------- 

ECHO 1.  M8X_DIA
ECHO 2.  Selection 2 
ECHO 3.  Selection 3 
ECHO ==========PRESS '0' TO QUIT========== 

ECHO. 

  

set input= 

set /p input=Please select a number: 

if /i '%input%'=='1' goto job_1 

if /i '%input%'=='2' goto job_2 

if /i '%input%'=='3' goto job_3 

if /i '%input%'=='0' goto end 
if /i '%input%'=='q' goto end 

echo wrong number, try it again&&goto :yes 

:job_1 
echo download external flash
goto yes 

:job_2 
echo job_2 
goto yes 

:job_3 
echo job_3 
goto yes 

:no 
:end 
echo Good-bye! 
endlocal & @echo on
rem pause

```
