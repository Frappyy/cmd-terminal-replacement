#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#KeyHistory 0
ListLines Off

while(true)
{
	If ProcessExist("cmd.exe") and !ProcessExist("WindowsTerminal.exe")
	{
		Process, Close, cmd.exe
		Run, C:\Users\aitfr\AppData\Local\Microsoft\WindowsApps\wt.exe
		
		Sleep, 100
	}
	Else
	{
		Sleep, 100
		Continue
	}
}

ProcessExist(procName)
{
	Process, Exist, %procName%
	return ErrorLevel
}