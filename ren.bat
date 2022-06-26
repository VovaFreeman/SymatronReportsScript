@echo off
rem iterate over all matching files:
for /F "delims=" %%A in (
  'dir /S /B /A:-D "\*.REPORT"'
) do (
  rem "%%~nA" removes last ".pdf"
  for /F %%B in ("%%~nA") do (
    rem "%%~nB" removes ".OCR" part
    for /F %%C in ("%%~nB") do (
      rem "%%~nC" removes remaining ".pdf"
      ECHO ren "%%~fA" "%%~nC.pdf"
    ) & rem next %%C
  ) & rem next %%B
) & rem next %%A


