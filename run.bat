@echo off
call make.bat
if not errorlevel 1 (
	CSpect.exe -brk -exit -s14 -w4 -map=tool.sna.map -zxnext -mmc=.\ tool.sna
	call install.bat
)
