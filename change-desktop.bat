@ECHO OFF

SET filename="%1"
SET location=%~dp0

IF EXIST %filename% (
	powershell -ExecutionPolicy ByPass -File %location%helpers/change-desktop-helper.ps1 -filename %filename%
) ELSE (
	echo Could not find file %filename%
)
