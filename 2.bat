"C:\Program Files\gs\gs9.50\bin\gswin64c.exe" -dBATCH -dSAFER -dNOPAUSE -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress -dAutoRotatePages=/PageByPage -r600 -sOutputFile="C:\PDFE\%2%.pdf" -
powershell.exe -noexit "& C:\PDFSCRIPT\email.ps1 -user %1 -jobname %2 -file C:\pdfe\%2%.pdf"
del C:\PDFE\%2%.pdf


REM DO THIS.... Set-ExecutionPolicy -ExecutionPolicy Unrestricted
