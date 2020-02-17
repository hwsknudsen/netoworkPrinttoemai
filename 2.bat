SET /A test=%RANDOM%
"C:\Program Files\gs\gs9.50\bin\gswin64c.exe" -dBATCH -dSAFER -dNOPAUSE -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress -dAutoRotatePages=/PageByPage -r600 -sOutputFile="C:\PDFE\%test%.pdf" -
cd "C:\PDFSCRIPT"

powershell.exe -noexit "& C:\PDFSCRIPT\email.ps1 -user %1 -jobname %2 -file C:\pdfe\%test%.pdf"


del C:\PDFE\%test%.pdf




REM DO THIS.... Set-ExecutionPolicy -ExecutionPolicy Unrestricted
