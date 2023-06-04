cycles=max
@echo off
del *.map
del *.obj
del *.tr
del %1.exe
tasm /zi %1
tlink /v %1
if exist %1.exe %1.exe