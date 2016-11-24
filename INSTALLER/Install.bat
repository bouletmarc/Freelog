@ECHO OFF

ECHO Freelog Support File Installation
ECHO pgmfi.org

ECHO.
ECHO Removing FreeLog entry from the registry
REGEDIT /s clear_registry.reg
ECHO done...

ECHO.
ECHO Copying important dlls / ocx
Copy /-Y mscomm32.ocx c:\windows\system32\
Copy /-Y comdlg32.ocx c:\windows\system32\
Copy /-Y flexwiz32.ocx c:\windows\system32\
Copy /-Y mscomctl32.ocx c:\windows\system32\
Copy /-Y msdatgrd32.ocx c:\windows\system32\
Copy /-Y msflxgrd32.ocx c:\windows\system32\
Copy /-Y msscript32.ocx c:\windows\system32\
Copy /-Y tabctl32.ocx c:\windows\system32\
Copy /-Y msstdfmt.dll c:\windows\system32\
Copy /-Y msvcrt.dll c:\windows\system32\
Copy /-Y scrrun.dll c:\windows\system32\
Copy /-Y vb6stkit.dll c:\windows\system32\
ECHO done...

ECHO.
ECHO Registrying dlls/ocx
regsvr32 /s c:\windows\system32\mscomm32.ocx
regsvr32 /s c:\windows\system32\comdlg32.ocx
regsvr32 /s c:\windows\system32\flexwiz32.ocx
regsvr32 /s c:\windows\system32\mscomctl32.ocx
regsvr32 /s c:\windows\system32\msdatgrd32.ocx 
regsvr32 /s c:\windows\system32\msflxgrd32.ocx
regsvr32 /s c:\windows\system32\msscript32.ocx
regsvr32 /s c:\windows\system32\tabctl32.ocx
regsvr32 /s c:\windows\system32\msstdfmt.dll
regsvr32 /s c:\windows\system32\msvcrt.dll
regsvr32 /s c:\windows\system32\scrrun.dll
regsvr32 /s c:\windows\system32\vb6stkit.dll
ECHO done..

ECHO.
ECHO Try running Freelog now and report any bugs to the forum (pgmfi.org)
ECHO Goodluck !!

