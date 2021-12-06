@echo off
setlocal
::git log -n1 |findstr Date> src.pro.feed
::set /p feed=<src.pro.feed
for /f "tokens=*" %%i in ('git log -n1 ^| findstr "Date"') do set feed=%%i
set feed=%feed:~12,20%
if "%feed:~-1%"==" " set feed=%feed:~0,-1%
set feed=%feed: =_%
echo %feed%
